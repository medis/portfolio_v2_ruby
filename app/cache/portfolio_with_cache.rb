class PortfolioWithCache

  def initialize(portfolio_service)
    @portfolio_service = portfolio_service
  end

  def build
    Rails.cache.fetch('portfolios', expires_in: 5.seconds) do
      portfolio_service.build
    end
  end

  private

  attr_reader :portfolio_service
end
