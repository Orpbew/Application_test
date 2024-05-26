class PagesController < ApplicationController
    def home
    end
   
    def about 
    end

    def hihi
        @membrs = ["thanh", "dimitri", "germain", "damien", "julien", "jean", "pierre"]
         
        if params[:fuckers]
            @membrs = @membrs.select { |m| m.start_with?(params[:fuckers]) }
            
        end
    end   

end
