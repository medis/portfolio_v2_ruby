class PortfoliosRepository
  def all
    path = File.join(Rails.root, 'app', 'data', 'portfolios.json')
    file = File.read(path)
    hash = JSON.parse(file)
  end
end
