class PostsController < ApplicationController
  before_action :check_log_in, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order("created_at DESC").limit(10)
    @categories = Category.all.order(:name).limit(10)
    @posts_most_views = Post.all.order("visits DESC").limit(15)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post_comments = Comment.where(post_id: @post.id)
    @author = Author.find_by(id: @post.author_id)
    @category = Category.find_by(id: @post.category_id)
    @subcategory = Subcategory.find_by(id: @post.subcategory_id)
    @categories = Category.all.order(:name)
    @posts_most_views = Post.all.order("visits DESC").limit(15)
    @comment = Comment.new
    @post.increment
  end

  # GET /posts/new
  def new
    @subcategories = Subcategory.all.order(:name)
    @categories = Category.all.order(:name)
    @authors = Author.all.order(:name)
    @post = Post.new
    @body_value = '<h2 class="post-text-h2"> </h2> <h3 class="post-text-h3"> </h3> <p class="post-text-p"> </p>'
  end

  # GET /posts/1/edit
  def edit
    @subcategories = Subcategory.all.order(:name)
    @categories = Category.all.order(:name)
    @authors = Author.all.order(:name)
    @body_value = @post.body
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_posts
    @search_param = params[:current_search][:search]
    @posts = Post.where("title ILIKE :search", 
      :search => "%#{params[:current_search][:search]}%")
    @categories = Category.all.order(:name).limit(10)
    @posts_most_views = Post.all.order("visits DESC").limit(15)
  end

  private
    def check_log_in
      if logged_in? == false
        redirect_to home_path
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by(url: params[:url])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :url, :body, :intro_text, 
        :front_image, :image_name, :category_id, :subcategory_id, :author_id)
    end
end
