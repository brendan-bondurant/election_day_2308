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
  end
end
