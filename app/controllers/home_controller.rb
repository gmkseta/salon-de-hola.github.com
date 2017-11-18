class HomeController < ApplicationController
  def index
    @names = Name.all
    @winners = Winner.all
  end
  
  
  def write
    @names = Name.all
    @winners = Winner.all
    @names.each do |n|
      if  (n.host== params[:host] &&n.guest== params[:guest]) || (n.guest== params[:host] &&n.host== params[:guest])
          @winners.each do |w|
            if(n.host==w.host || n.guest==w.host)
              redirect_to '/home/rr' and return
            end
          end
          Winner.create(host: n.host,guest: n.guest)
          redirect_to '/home/rr' and return
        
      end
    end
     redirect_to '/home/xx'
  end
  
  def rr
  end
  def xx
  end
  
  
end

