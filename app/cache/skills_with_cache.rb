class SkillsWithCache
  def self.build(skills_service = SkillsBuilder.new)
    Rails.cache.fetch('skills', expires_in: 12.hours) do
      skills_service.build
    end
  end
end
