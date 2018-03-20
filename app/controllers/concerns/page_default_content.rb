module PageDefaultContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Bruce Lesko | Web Developer"
    @seo_keywords = "ruby on rails fullstack web developer"
  end
end
