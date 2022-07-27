require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
  let(:dmns) { Museum.new("Denver Museum of Nature and Science") }
  let(:gems_and_minerals) { Exhibit.new({name: "Gems and Minerals", cost: 0}) }
  let(:dead_sea_scrolls) { Exhibit.new({name: "Dead Sea Scrolls", cost: 10}) }
  let(:imax) { Exhibit.new({name: "IMAX",cost: 15}) }
  let(:patron_1) { Patron.new("Bob", 20) }
  let(:patron_2) { Patron.new("Sally", 20) }

  it 'should be a class' do
    expect(dmns).to be_a Museum
  end

  it 'should reflect the instance name' do
    expect(dmns.name).to eq ("Denver Museum of Nature and Science")
  end

  it 'should inform the instance exhibits' do
    expect(dmns.exhibits).to eq ([])
  end

  

end