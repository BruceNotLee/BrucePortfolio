class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @page_title = "Bruce Lesko | About"
  end

  def contact
    @page_title = "Bruce Lesko | Contact"
  end

  def privacy
    @page_title = "Bruce Lesko | Privacy"
  end

  def search
    @keyword = params[:keyword]
    @keyword1 = params[:keyword1]
    @keyword2 = params[:keyword2]
  end
end
