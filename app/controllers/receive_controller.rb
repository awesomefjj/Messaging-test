class ReceiveController < ApplicationController

def new
    @recei = Text.new
end

def show
    #@recei = Text.find_by(id: params[:id])
    #@recei = Text.find_by(uname: params[:uname])
   Text.where(uname: params[:uname]).find_each do |text|
    @recei = Text.deliver_now
  end

end
end
