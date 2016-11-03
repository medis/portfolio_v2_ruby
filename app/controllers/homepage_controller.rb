class HomepageController < ApplicationController
  def index
    portfolios = PortfolioWithCache.build

    render 'homepage/index', :locals => {:portfolios => portfolios}
  end
end
