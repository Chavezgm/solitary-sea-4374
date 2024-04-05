class Member
  attr_reader :name, :photo_url, :allies, :enemies, :affiliations
  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl] 
    @allies = data[:allies] || ["None"]
    @enemies = data[:enemies] || ["None"]
    @affiliations = data[:affiliation] || ["None"]
  end
end