require './spec/spec_helper'

RSpec.describe Race do 
  describe '#initialize' do 
    it 'should have a race' do
      race = Race.new("Texas Governor")
      expect(race.office).to eq("Texas Governor")
    end
    it 'should have candidates' do
      race = Race.new("Texas Governor")
      expect(race.candidates).to eq([])
    end
  end
  
  describe "#register_candidate!" do
    it 'can add candidates' do 
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq('Diana D')
      expect(candidate1.party).to eq(:democrat)
    end
    it 'can have a second candidate' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      expect(candidate1.class).to eq(Candidate)
      expect(candidate2.class).to eq(Candidate)
    end
    
    it 'shows all candidates' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      race.add_to_race(candidate1)
      race.add_to_race(candidate2)
      expect(race.candidates).to be_instance_of(Array)
      expect(race.candidates.count).to eq (2)
    end
  end

  describe '#open' do
    it 'defaults to open' do 
      race = Race.new("Texas Governor")
      expect(race.open?).to eq(true)
    end
  end
  describe '#close' do
    it 'closes the race' do 
      race = Race.new("Texas Governor")
      expect(race.open?).to eq(true)
      race.close
      expect(race.open?).to eq(false)
    end
  end
  describe '#winner' do 
  it 'is false if race is open' do
    race = Race.new("Texas Governor")
    expect(race.winner).to eq(false)
    
    end
  end
end
