class Like
  include Mongoid::Document
  


	belongs_to :users 
	belongs_to :shoes

end
