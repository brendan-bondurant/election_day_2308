require './spec/spec_helper'

RSpec.describe Candidate do
  
  describe "initialize" do
    it 'has a name' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.name).to eq('Diana D')
    end
    it 'has a party' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.party).to eq(:democrat)
    end
  end
  describe '#vote_for!' do 
    it 'has zero votes' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.votes).to eq(0)
    end
    it 'can add votes' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.votes).to eq(0)
      diana.vote_for!
      expect(diana.votes).to eq(1)
      diana.vote_for!
      expect(diana.votes).to eq(2)
      diana.vote_for!
      expect(diana.votes).to eq(3)
      diana.vote_for!
      expect(diana.votes).to eq(4)
    end
  end
end
