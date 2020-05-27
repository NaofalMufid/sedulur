class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments.all
  end

  # GET /posts/new
  # def new
  #   @post = Post.new
  # end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params) do |post|
      post.user = current_user
    end

    if @post.save
      redirect_to root_path
    else
      redirect_to root_path, notice: @post.errors.full_messages.first
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post.update(post_params)
    redirect_to @post
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to root_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by(id: params[:id])
      render_404 and return unless @post && User.find_by(id: @post.user_id)
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:attachment, :content)
    end
end
