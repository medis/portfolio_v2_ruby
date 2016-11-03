class PortfolioWithCache
  def self.build(portfolio_service = PortfolioBuilder.new)
    Rails.cache.fetch('portfolios', expires_in: 12.hours) do
      portfolio_service.build
    end
  end
end
