class Review
  include Mongoid::Document
  
  field :rating, type: Integer
  field :comments, type: String
  field :user, type: String
  validates :comments, presence: true
  validates :rating, presence: true
  
end