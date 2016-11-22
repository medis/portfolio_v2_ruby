class SkillsBuilder
  def build
    @skills = {}
    generate
    @skills
  end

  private

  def generate
    path = File.join(Rails.root, 'app', 'data', 'skills.json')
    file = File.read(path)
    hash = JSON.parse(file)
    hash.each { |key, value| add(key, value) }
  end

  def add(group, skills)
    @skills_array = []
    
    skills.each { |title, percent|
      @skills_array << Skill.new(
        title: title,
        percent: percent,
      )
    }

    @skills.store(group, @skills_array)
  end
end
