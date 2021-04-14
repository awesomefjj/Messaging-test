class MainController < ApplicationController

    def index
     if session[:text_id]
        @send = Text.find(session[:text_id])
     end
     end


end
