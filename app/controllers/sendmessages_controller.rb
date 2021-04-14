class SendmessagesController < ApplicationController

 def new
    @send = Text.new
 end

 def create
    @send = Text.new(text_params)
    if @send.save
       session[:text_id] = @send.id
        redirect_to root_path, notice: "Successfully send messages"
    else
      render new
    end
 end

 private
  def text_params
    params.require(:text).permit(:uname, :phonenum, :content)
  end


end