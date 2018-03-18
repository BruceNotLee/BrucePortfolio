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
    @search = params[:search]
  end
end
