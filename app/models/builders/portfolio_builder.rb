class PortfolioBuilder
  def build
    @portfolios = []
    generate
    @portfolios
  end

  private

  def generate
    @portfolios = []
    path = File.join(Rails.root, 'app', 'data', 'portfolios.json')
    file = File.read(path)
    hash = JSON.parse(file)
    hash.each { |key,value| add(key) }
  end

  def add(portfolio)
    @portfolios << Portfolio.new(
      title: portfolio['title'],
      image: portfolio['image'],
      spec: portfolio['spec'],
      description: portfolio['description'],
      technology: portfolio['technology'],
      website: portfolio['website']
    )
  end
end
