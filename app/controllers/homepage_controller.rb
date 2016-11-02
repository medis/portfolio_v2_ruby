class HomepageController < ApplicationController
  require 'PortfoliosRepository.rb'
  require 'Cachable.rb'
  def index
    # Prepare Portfolios repository.
    portfoliosRepo = PortfoliosRepository.new
    # Attach portfolios repository to cache layer.
    portfoliosCache = Cachable.new('portfolios', portfoliosRepo, 24.hours)
    # Get all portfolios via cache layer.
    portfolios = portfoliosCache.all
    render 'homepage/index', :locals => {:portfolios => portfolios}
  end
end
