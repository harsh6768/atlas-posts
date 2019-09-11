class PostsController < ApplicationController
    
    http_basic_authenticate_with name:"harsh",password:"harsh",except: %i[:index,:show]
    def index
        @posts=Post.all
    end 
    
    def show
        #it will get the single post
        @post=Post.find(params[:id])
    end
    
    def new 
        @post=Post.new
    end

    def create 
        #to send the data into the create method
        # render plain: params[:post].inspect
        
        #this will give the error because we havn't define yet what to send with the post method
        # @post=Post.new(params[:post])
        
        #to resolve the this we will create a private method and define the fileds for the post method
        @post=Post.new(post_params)   #Post is the name of the Model that we have created

        #to save the post
        if(@post.save)
            redirect_to @post #to redirect to the show method 
        else 
            render 'new'
        end
    end

    def edit
        @post=Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])

        if(@post.update(post_params))
            redirect_to @post #to redirect to the show method 
        else 
            render 'edit'
        end
    end
    def destroy
        @post=Post.find(params[:id])
        @post.destroy 

        redirect_to  posts_path
    end

    private def post_params
        params.require(:post).permit(:title,:body)
    end


end
