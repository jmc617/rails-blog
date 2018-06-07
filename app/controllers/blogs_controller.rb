class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @comment = Comment.new()
  end

  def show
    @blog = Blog.find(params[:id])
    @comment = Comment.new
  end

  def profile
    @user = User.find(params[:id])
    @blogs = @user.blogs
  end

  def comment
   @blog = Blog.find(params[:id])
   @comment = Comment.new
  end

  def create
    @user = User.find(current_user.id)
    @blog = @user.blogs.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      # flash[:message] = 'blog created'
      redirect_to "/"
    else
      # flash[:message] = 'please try again'
      render "/"
  end
end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to "/"
    else
      render edit_blog_path
    end
  end


def destroy
  blog = Blog.find(params[:id])
  blog.destroy
  redirect_to blogs_path(:id => current_user.id)
end
end


def blog_params
  params.require(:blog).permit(:title, :content)
end
