require 'model'

describe Player do

  describe '#name' do
    it 'shoukd return the name that was inputted' do
      person = described_class.new('person')
      expect(person.name).to eq 'person'
    end
  end
end
