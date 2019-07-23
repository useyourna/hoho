class HomeController < ApplicationController
    def index
        @posts = Post.all.reverse
    end
    

    
    def new
    end
    
    def create
        post = Post.new
        post.content = params[:content]
        post.title = params[:title]
        post.save
        
        redirect_to "/"
        
    end
    
    def destroy
        post = Post.find(params[:post_id])
        post.destroy
        
        redirect_to"/"
    end
    
    def edit
        @post = Post.find(params[:post_id])
    end
    
    def update
        post=Post.find(params[:params_id])
        post.title=params[:content]
        post.save
        
        redirect_to"/"
    end
        
end
