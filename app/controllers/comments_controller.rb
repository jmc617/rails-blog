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

  def update
    @blog = Blog.find(params[:blog_id])
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to "/"
    else
      render edit_comment_path
    end
  end


  def index

  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      redirect_to "/"
    else render edit_comment_path
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @blog = Blog.find(params[:blog_id])
  end

  def show
  end
end

  def comment_params
    params.require(:comment).permit(:content)
  end
