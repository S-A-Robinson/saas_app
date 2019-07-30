Rails.application.routes.draw do
    #root is the home page of the site
    root to: 'pages#home'
    get 'about', to: 'pages#about'
end
