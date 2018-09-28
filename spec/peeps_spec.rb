require 'peep.rb'

describe Peep do
  describe '.all' do
    it 'returns all texts from peeps table ' do
      SetupDB.add_peeps
      peeps = Peep.all
      expect(peeps).to include({created_at: nil, text: 'test'})
      expect(peeps).to include({created_at: nil, text: 'test1'})
      expect(peeps).to include({created_at: nil, text: 'test2'})
    end
  end
end