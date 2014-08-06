class Shoe
  include Mongoid::Document
  field :title, type: String
  field :model, type: String
  field :colorway, type: String
  field :style_code, type: String
  field :release_year, type: String
  field :description, type: String
end
