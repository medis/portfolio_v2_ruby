class Portfolio
  include ActiveModel::Model

  attr_accessor :title, :image, :spec, :description, :technology, :website

  validates :title, :image, :spec, :description, :presence => true
end
