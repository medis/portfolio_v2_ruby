class Cachable
  def initialize(key, object, time)
    @key = key
    @object = object
    @time = time
  end

  def all
    Rails.cache.fetch(@key, expires_in: @time) do
      @object.all
    end
  end
end
