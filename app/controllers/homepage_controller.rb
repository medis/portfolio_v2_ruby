class HomepageController < ApplicationController
  def index
    portfolios = PortfolioWithCache.new.build

    render 'homepage/index', :locals => {:portfolios => portfolios}
  end
end
