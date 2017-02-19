require 'date'

module HomepageHelper

  def years_since(dt)
      delta = (Date.today - Date.parse(dt)) / 365
      delta.to_i
  end

end
