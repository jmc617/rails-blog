class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.blog_id = @blog.id
    @comment.user_id = current_user.id

    if @comment.save
      flash[:message] = 'blog created'
      redirect_to "/"
    else
      flash[:message] = 'please try again'
      redirect_to "/"
    end
  end

  def index

  end

  def edit
  end

  def show
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
