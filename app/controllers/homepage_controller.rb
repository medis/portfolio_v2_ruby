class HomepageController < ApplicationController
  def index
    portfolios = PortfolioWithCache.build

    skills = SkillsWithCache.build

    render 'homepage/index', :locals => {:portfolios => portfolios, :skills => skills}
  end
end
