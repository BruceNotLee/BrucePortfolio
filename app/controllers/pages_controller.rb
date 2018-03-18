class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def search
    @keyword = params[:keyword]
    @keyword1 = params[:keyword1]
    @keyword2 = params[:keyword2]
  end
end
