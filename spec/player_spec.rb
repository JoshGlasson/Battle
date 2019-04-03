require 'player'

describe Player do
  subject(:josh) { Player.new('Josh') }

  describe '#name' do
    it 'returns the name' do
      expect(josh.name).to eq 'Josh'
    end
  end
end
