require 'model'

describe Player do
  person = described_class.new('person')

  describe '#name' do
    it 'should return the name that was inputted' do
      expect(person.name).to eq 'person'
    end
  end

  describe '#damage' do
    it 'should take 10 hp from the players health' do
      expect { subject.damage }.to change{ subject.hp }.by(-10)
    end
  end
end
