class ReceiveController < ApplicationController
before_action :set_name, only: %i[show]
before_action :get_num, only: %i[index]
def new
 
end

def show
    @recei = Text.all
    
end

def index
  @pieSize = {
    :height => 500,
    :width => 500
  }

  @pieData = [
        {
          value: 300,
          color:"#F7464A",
          highlight: "#FF5A5E",
          label: "Red"
        },
        {
          value: 50,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Green"
        },
        {
          value: 100,
          color: "#FDB45C",
          highlight: "#FFC870",
          label: "Yellow"
        },
        {
          value: 40,
          color: "#949FB1",
          highlight: "#A8B3C5",
          label: "Grey"
        },
        {
          value: 120,
          color: "#4D5360",
          highlight: "#616774",
          label: "Dark Grey"
        }

      ].to_json
  
end

private
def set_name
  @recei = Text.find_by(uname: params[:uname])
end

def get_num
   @arti = Article.last(5)
   @all_num = Article.all
end

end
