class DinPost
  include Mongoid::Document
  
  field :title, type: String
  field :url, type: String
  
  validates :url, presence: true, uniqueness: true
  
  def get_embeddly_url
    "http://api.embed.ly/1/extract?url=#{self.url}&maxwidth=500&key=58e097e3ef88452bbe3806bce70297b5"
    
    #Jeff's Key : 76cdabdefa9c4817a8968f170bebc176
    #My Key     : 58e097e3ef88452bbe3806bce70297b5
  end
  
  def get_embeddly_image
    
    api_url = "http://api.embed.ly/1/extract?url=#{self.url}&maxwidth=500&key=58e097e3ef88452bbe3806bce70297b5"
    
    doc = RestClient.get api_url
    doc = JSON.parse(doc)
    doc['images'][0]['url']
  end
  
end
