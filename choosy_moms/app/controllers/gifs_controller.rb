class GifsController < ApplicationController
  
  def image_list
    
    @message = params[:dbg]
    
    @images = Image.all()
  end
  
  def create
    
    Image.create url: params[:image][:url]
    redirect_to '/gifs'
    
    # ok = Image.create url: params[:image][:url]
    # puts 'record:'
    # puts ok
    # 
    # if ok.nil? || !ok
    #   redirect_to '/gifs?dgb=error'
    # else
    #   redirect_to '/gifs'
    # end

  end
  
end