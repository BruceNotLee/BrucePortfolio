class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @blogs = Blog.all
    @page_title = "Bruce Lesko | Posts"
  end

  def show
    @page_title = "Bruce Lesko | #{@blog.title}"
    @seo_keywords = @blog.title
  end

  def new
    @blog = Blog.new
  end

  def toggle_status
     if @blog.draft?
       @blog.published!
     elsif @blog.published?
       @blog.draft!
     end
    redirect_to blogs_url, notice: 'Blog status updated.'
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust the scary internet.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
