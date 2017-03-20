Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'coaching'
  get 'ask', to: 'coaching#ask'
  get 'answer', to: 'layouts#answer'

end
