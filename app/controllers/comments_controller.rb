class CommentsController < ApplicationController
  # before_action :authenticate_user!
  

    def index
      not_administrator
      @comments = Comment.all
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id if current_user
      @user = current_user
      @course = Course.find(params[:course_id]) 
      if @comment.save
        CommentMailer.new_comment(@comment).deliver_later
        flash[:success] = "The comment has been saved."
        redirect_to course_post_path(@course, @post)
      else
        redirect_to course_post_path(@course, @post)
        flash[:danger] = "#{@user.first_name}, We have these errors: " + @comment.errors.full_messages.to_sentence 
      end
    end 
  
    def update
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @course = Course.find(params[:course_id]) 
      is_not_comment_owner
      if @comment.update(comment_params)
        flash[:success] = "The comment has been updated."
        redirect_to course_post_path(@course, @post)
      else 
        flash[:danger] = "#{@comment.user.first_name}, We have these errors: " + @comment.errors.full_messages.to_sentence 
        redirect_back(fallback_location: root_path)
    end 
  end
  
    def edit
      @course = Course.find(params[:course_id]) 
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      is_not_comment_owner
    end 
    
    def destroy
      @course = Course.find(params[:course_id]) 
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id]) 
      if @comment.user == current_user
        @comment.destroy
        flash[:warning] = "The comment has been deleted."
        redirect_to course_post_path(@course, @post)
      else
        flash[:danger] = "You do not own this comment!"
        redirect_back(fallback_location: root_path)
      end
    end

    def import
      Comment.import(params[:file])
      redirect_to comments_path, notice: 'Comments have been uploaded.'
    end  
  
  private

    def is_not_comment_owner
      if current_user != @comment.user 
        flash[:danger] = "You do not own this comment!"
        redirect_back(fallback_location: root_path)
      end
    end 

    def comment_params
      params.require(:comment).permit(:body, :gist_link)
    end


  end