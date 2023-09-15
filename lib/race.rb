class Race
  attr_reader :office, :candidates
  def initialize(race)
    @office = race
    @candidates = []
    @open = true
    @winner = false
  end

  #between hour 2 and 3 I am second guessing what I did with the following methods, and whether or not it should be 1 method. If I add the shovel, it passes the last test. However, it then doesn't pass the previous test about the class of candidate 1. I can add the second method but I'm not sure if that meets what I am supposed to do for the IC. Because this is a practice, I spent more time than I would have trying to make it work in 1 method, and didn't work on iteration 4 very much. I guess I will see how much of it4 I can do in the next 10 minutes before my 3 hours is up

  def register_candidate!(candidate_info)
    new_candidate = Candidate.new(candidate_info)
    # @candidates << new_candidate
  end


  def add_to_race(candidate)
    @candidates << candidate
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def winner
    if @open = true
      false
    
    end
  end
end