class CommentsController < ApplicationController
  # def new
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.new
  # end
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:content))
    redirect_to post_path(@post)    
end

def edit
  @comment = Comment.find(params[:id])
end

def update
  @comment = Comment.find(params[:id])
  @comment.update(params[:comment].permit(:content))
  redirect_to post_path(@comment.post_id) 
end

def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
end
  end