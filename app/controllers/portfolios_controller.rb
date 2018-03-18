class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @portfolio_items = Portfolio.all
    @ruby = Portfolio.ruby
    @rails = Portfolio.rails
    @javascript = Portfolio.javascript
    @html = Portfolio.html
    @css = Portfolio.css
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def toggle_status
     if @portfolio_item.draft?
       @portfolio_item.published!
     elsif @portfolio_item.published?
       @portfolio_item.draft!
     end
    redirect_to portfolios_path, notice: 'Portfolio status updated.'
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully removed.' }
    end
  end

  private
    def set_portfolio
      @portfolio_item = Portfolio.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
