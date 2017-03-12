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

  def add(group, tech)
    tech_hash = {}
    tech.each { |tech_title, skills|
      skills_array = []
      
      skills.each { |title|
        skills_array << Skill.new(
          title: title
        )
      }

      tech_hash.store(tech_title, skills_array)
    }

    @skills.store(group, tech_hash)
  end
end
