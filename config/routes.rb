Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "main#index"

get "send", to: "sendmessages#new"
post "send", to: "sendmessages#create"

get "recei", to: "receive#new"
post "recei", to: "receive#show"

end


