Rails.application.routes.draw do
  get 'ex2/loop'
  get 'main/abc'
  get 'main/xxx'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "abc", to: "main#abc"
  get "somchai", to: "main#xxx"
  get "welcome", to: "main#welcome"
  get "contact_us", to: "main#contact"
  get "loop", to: "ex2#loop"
end
