class HomeController < ApplicationController
    def index
        @posts = Post.all.reverse
    end
    
    @@visit = 0
    def visit
        @visit +=1
        @@visit +=1
        "today total visit #@@visit."
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
