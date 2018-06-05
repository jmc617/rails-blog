class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
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
      render "/blogs/new"
    end
  end

  def edit
  end
end

def blog_params
  params.require(:blog).permit(:title, :content)
end
