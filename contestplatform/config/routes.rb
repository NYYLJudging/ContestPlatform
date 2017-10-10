Rails.application.routes.draw do
  get 'homepage/index'

  #Resources are collections of similar objects
  #Items for a resource follow CRUD principals

  #Judges
  #Judges should be able to enter their Personal Information as a profile
  #This is for establishing a Judge profile that could eb utilized between multiple contests
  #Judges can have a name and login key
  resources :judges

  #Players
  #Need to be able to add player objects to a specified contest
  #Players should contain fields for
  resources :players

  #Contests
  #Allows for contests to be created and saved as objects in the DB
  #Contests have the actual scoring forms, which are interacted with by Judges
  #This means that a contest will likely have some sub-resources
  resources :contests
  root 'homepage#index'
end
