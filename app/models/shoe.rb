class Shoe
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Search
  include Mongoid::Attributes::Dynamic

  field :title, type: String
  field :model, type: String
  field :colorway, type: String
  field :style_code, type: String
  field :release_year, type: String
  field :description, type: String


  has_mongoid_attached_file :shoe_picture
	validates_attachment_content_type :shoe_picture, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  search_in :title, :model, :colorway, :style_code, :release_year, :description

  embedded_in :user

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    end
  end


end

