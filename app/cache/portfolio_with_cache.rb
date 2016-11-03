class PortfolioWithCache

  def initialize(portfolio_service = PortfolioBuilder.new)
    @portfolio_service = portfolio_service
  end

  def build
    Rails.cache.fetch('portfolios', expires_in: 12.hours) do
      portfolio_service.build
    end
  end

  private

  attr_reader :portfolio_service
end
