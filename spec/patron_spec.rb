require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
  let(:patron_1) { Patron.new("Bob", 20) }

  xit 'should have a class' do
    expect(patron_1).to be_a Patron
  end

  xit 'should inform the instance name' do
    expect(patron_1.name).to eq "Bob"
  end

  xit 'should inform how much money instance has' do
    expect(patron_1.spending_money).to eq 20
  end

  xit 'should inform what interest the instance' do
    patron_1.interests
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    expect(patron_1.interests).to eq (["Dead Sea Scrolls", "Gems and Minerals"])
  end
end