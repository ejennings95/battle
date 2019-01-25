require 'model'

describe Player do

subject(:player_2) { Player.new(:player_2) }

  describe '#name' do
    it 'shoukd return the name that was inputted' do
      person = described_class.new('person')
      expect(person.name).to eq 'person'
    end
  end

  describe '#damage' do
   it 'should take 10 hp from the players health' do
     expect { player_2.damage }.to change { player_2.hp }.by(-10)
   end
 end
end

describe Game do

  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  subject(:game) { described_class.new(player_1, player_2) }

  it "should keep the record of player 1" do
    expect(game.player_1).to eq player_1
  end

  it "should keep the record of player 1" do
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'should allocate damange to the player in question' do
      expect(player_2).to receive(:damage)
      subject.attack(player_2)
    end
  end
end
