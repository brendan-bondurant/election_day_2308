require './spec/spec_helper'

RSpec.describe Election do
  describe "#initialize" do
    it 'exists' do  
      election = Election.new(2023)
      expect(election).to be_instance_of(Election)
    end   
    it 'has a year' do
      election = Election.new("2023")
      expect(election.year).to eq("2023")
    end
    it 'has races' do
      election = Election.new("2023")
      expect(election.races).to eq([])

    end
  end
  describe "#add_race" do 
    it 'can add races' do
      election = Election.new("2023")
      race = Race.new("Texas Governor")
      election.add_race(race)
      expect(election.races.count).to eq(1)
    end
  end
  describe "#candidates" do
    it 'has candidates' do
      election = Election.new("2023")
      expect(election.candidates).to eq([])
      diana = Candidate.new({name: "Diana D", party: :democrat})
      election.add_candidate(diana)
      expect(election.candidates.count).to eq(1)
    end
  end
  describe "#vote_counts" do
    it 'can count votes' do 
      election = Election.new("2023")
      diana = Candidate.new({name: "Diana D", party: :democrat})
      joe = Candidate.new({name: "Joe", party: :independent})
      election.add_candidate(diana)
      election.count(diana)
      expect(election.vote_counts.keys).to eq(["Diana D"])
      expect(election.vote_counts.count).to eq(1)
      election.count(joe)
      expect(election.vote_counts.count).to eq(2)
    end
    it 'tells how many votes everyone got' do
      election = Election.new("2023")
      diana = Candidate.new({name: "Diana D", party: :democrat})
      joe = Candidate.new({name: "Joe", party: :independent})
      diana.vote_for!
      diana.vote_for!
      diana.vote_for!
      diana.vote_for!
      joe.vote_for!
      joe.vote_for!
      election.count(diana)
      election.count(joe)
      expect(election.vote_counts["Diana D"]).to eq("4")
    end
  end
end