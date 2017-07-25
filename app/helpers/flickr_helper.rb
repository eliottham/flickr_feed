module FlickrHelper
	def user_photos(user_id)
		photos = flickr.photos.search(user_id: user_id)
		photos = photos.map { |p| {
			image: FlickRaw.url_b(flickr.photos.getInfo(photo_id: p.id)),
			link:  FlickRaw.url_photopage(flickr.photos.getInfo(photo_id: p.id)) } }
	end

	def render_feed(user_id)
		begin
			photos = user_photos(user_id)
			render partial: '/flickr/feed', locals: { photos: photos }
		rescue Exception
			render partial: '/flickr/unavailable'
		end
	end
end