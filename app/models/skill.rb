class Skill
  include ActiveModel::Model

  attr_accessor :title, :percent

  validates :title, :percent, :presence => true
end
