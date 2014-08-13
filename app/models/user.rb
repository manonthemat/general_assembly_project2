class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  has_secure_password
  # before_save { self.email = email.downcase }

  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :is_active, type: Mongoid::Boolean, default: true
  # add_index :users, :email, unique: true

  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX},
  																	uniqueness: { case_sensitive: false}
  # validates_uniqueness_of :email

  validates :password, length: { minimum: 6}

  has_and_belongs_to_many :shoes
end


