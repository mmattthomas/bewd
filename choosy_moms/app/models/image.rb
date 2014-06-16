class Image
  include Mongoid::Document
  
  field :url, type: String
  
  validates :url, presence: true, uniqueness: true
  
end