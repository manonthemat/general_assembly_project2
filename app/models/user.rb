class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  
  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX},
  																	uniqueness: { case_sensitive: false}

end
