
  ### :heart: Star :heart: the repo to support the project or :smile:[Follow Me](https://github.com/harsh6768).Thanks!

# Atlas
### Setup for ruby ,rails and gem to start with development

### 1. Install ruby
### 2. Install rails
### 3. Install gem 

Useful Commands for developing app using ruby-on-rails

     rails new app_name   --->creating new app 
     
     rails s || rails server --->start the server 
     
     rails g controller controller_name(name should be plural) --->create controller
     
     rails g model model_name(name should be singular) columns:columns_type --->create model
     ex.  rails g model Post title:string body:text

#### Rails provides a resources method which can be used to declare a standard REST resource:   

We can create all the routes and map to it with controller using below command but for that we need to add the code into the routes.rb file

 resources:routes_name 
 
     resources:posts


Then run the below command

     rake routes ---> creating all the apis related to the Controller and map to it 
    
Create Table after Creating the Model
    
    rake db:migrate
     
Creating Child Model(Parent-->Post) 

    rails g model Comment username:string body:text post:references

## [Go to Rails to Learn More](https://guides.rubyonrails.org/getting_started.html)

## [Go to ERB to Learn More](https://www.stuartellis.name/articles/erb/)
