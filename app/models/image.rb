class Image
	include Mongoid::Document
	include Mongoid::Paperclip

	# belongs_to :user
	has_mongoid_attached_file :pic
	validates_attachment_content_type :pic, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end