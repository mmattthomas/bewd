class Rating
  include Mongoid::Document
  field :rate, type: Integer
  field :comments, type: String
end
