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

  it 'should be able to add exhibits' do
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    expect(dmns.exhibits).to eq ([gems_and_minerals,dead_sea_scrolls, imax])
  end

  it 'should inform which exhibits may interest the patrons' do
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    # require 'pry';binding.pry
    patron_2.add_interest("IMAX")
    expect(dmns.recommend_exhibits(patron_1)).to eq (["Dead Sea Scrolls", "Gems and Minerals"])
    expect(dmns.recommend_exhibits(patron_2)).to eq (["IMAX"])
  end
end