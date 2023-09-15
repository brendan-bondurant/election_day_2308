class Race
  attr_reader :office, :candidates
  def initialize(race)
    @office = race
    @candidates = []
  end

  def register_candidate!(candidate_info)
    new_candidate = Candidate.new(candidate_info)


  end
end