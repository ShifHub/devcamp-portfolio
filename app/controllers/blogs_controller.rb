class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy toggle_status ]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all
  # GET /blogs or /blogs.json
  def index
    @page_title = "My Portfolio Blog"
    @blogs = Blog.page(params[:page]).per(5)
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    @page_title = @blog.title
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.topic_id = Topic.last.id

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_url(@blog), notice: "Your post is now live." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Post was removed." }
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @blog.published?
      @blog.draft!
    elsif @blog.draft?
      @blog.published!
    end

    redirect_to blogs_url, notice: 'Post status has been updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id)
    end
    
end
