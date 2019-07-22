class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post_show
  end

  def new
  end

  def edit
    @post_edit
  end

  def create
    Post.create(title: "#{params[:crud_title]}", content: params[:crud_content])
  end

  def update
    @post_edit = Post.find(params[:id])
    @post_edit.title = params[:crud_title]
    @post_edit.content = params[:crud_content]
    @post_edit.save
  end

  def destroy
    @post_d = Post.find(params[:id])
    @post_d.deleta
    
    redirect_to root_path
  end
end
