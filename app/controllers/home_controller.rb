class HomeController < ApplicationController
  def index
    
  end
  
  
  def write
      if  "김성준"== params[:host] &&"박민지"== params[:guest]
        redirect_to '/home/rr'#home controller 따라서 ...
      else
        redirect_to :root
      end
  end
  
  def rr
      
  end
  
  
end
