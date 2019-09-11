
# Atlas
### Setup for ruby ,rails and gem to start with development

### 1. Install ruby
### 2. Install rails
### 3. Install gem 

Useful Commands for developing app using ruby-on-rails

     rails new app_name   --->creating new app 
     
     rails s || rails server --->start the server 
     
     rails g controller controller_name(name should be plural) --->create controller
     
     rails g model model_name(name should be singular) --->create model
     
##### We can create all the routes and map to it with controller using below command but for that we need to add the code into the routes.rb file
 resources:routes_name 
ex. resources:posts
Then run the below command

     rake routes ---> creating all the apis related to the Controller and map to it 
