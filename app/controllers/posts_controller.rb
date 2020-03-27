class PostsController < ApplicationController
 

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("updated_at DESC")
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(post_id: params[:post_id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    post_params = params.require('post').permit(:title, :content)
    @post = Post.create(post_params)
    redirect_to action: :index
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    post_params = params.require('post').permit(:title, :content)
    @post.update(post_params)
    redirect_to action: :index

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: :index
  end

end