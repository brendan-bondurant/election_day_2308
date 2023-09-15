class Election
  attr_reader :year, :races, :candidates, :vote_counts
  def initialize(year)
    @year = year
    @races = []
    @candidates = []
    @vote_counts = {}

  end

  def add_race(race)
    @races << race
  end

  def add_candidate(candidate)
    @candidates << candidate
  end

  def count(candidate)
      @vote_counts[candidate.name] = "#{candidate.votes}"
  end
end