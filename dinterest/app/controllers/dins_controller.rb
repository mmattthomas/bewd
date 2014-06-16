class DinsController < ApplicationController
  
  def index
    db_posts = DinPost.all
    
    # @din_posts = db_posts
    
    @din_posts = Array.new
    
    db_posts.each do |db_post|
    
      din_post_hash = Hash.new
      din_post_hash['url'] = db_post.url
      din_post_hash['title'] = db_post.title
      din_post_hash['id'] = db_post.id
      din_post_hash['image_url'] = db_post.get_embeddly_image
      @din_posts << din_post_hash
      
     end
    
    
  end
  
  def create
    new_din_post = DinPost.new
    new_din_post.title = params[:din_post][:title]
    new_din_post.url = params[:din_post][:url]
    new_din_post.save!
    
    redirect_to '/'
  end
  
  
  # a 'debugging' action
  def show
    
    post = DinPost.find params[:id]

    api_url = post.get_embeddly_url
    
    doc = RestClient.get api_url
    doc = JSON.parse(doc)
    
    #render json: doc
    @doc = doc
  end
  
end