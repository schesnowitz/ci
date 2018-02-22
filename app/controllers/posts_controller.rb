class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :not_owner_of_post, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!

  
  def index
    not_administrator
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @course = Course.find(params[:course_id]) 
  end

  # GET /posts/new
  def new
    not_administrator
    @course = Course.find(params[:course_id]) 
    @post = current_user.posts.build

  end

  # GET /posts/1/edit
  def edit
    # not_administrator
    @course = Course.find(params[:course_id]) 
  end

  # POST /posts
  # POST /posts.json
  def create
    not_administrator
    @post = current_user.posts.build(post_params) 
    @course = Course.find(params[:course_id]) 
    @user = current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to course_post_path(@course, @post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        flash[:danger] = "#{@user.first_name}, We have these errors: " + @post.errors.full_messages.to_sentence 
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    not_administrator
    # @post = current_user.posts.build(post_params) 
    @course = Course.find(params[:course_id]) 
    @user = current_user
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to course_post_path(@course, @post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        flash[:danger] = "#{@user.first_name}, We have these errors: " + @post.errors.full_messages.to_sentence 
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    not_administrator
    @course = Course.find(params[:course_id]) 
    @post.destroy
    respond_to do |format|
      
      format.html { flash[:danger] = 'Post was successfully destroyed.'
        redirect_to course_path(@course) }
      format.json { head :no_content }
    end
  end

  def import
    Post.import(params[:file])
    redirect_to posts_path, notice: 'Posts have been uploaded.'
  end  

  private

    def not_owner_of_post
      if current_user != @post.user
        flash[:danger] = "You need to be the author to perform this function!"
        redirect_back(fallback_location: root_path)
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :user_id, :course_id, :lecture_number, :section_number, :section_name )
    end
end

