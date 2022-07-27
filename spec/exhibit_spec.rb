require './lib/exhibit'

RSpec.describe Exhibit do
  let(:exhibit) { Exhibit.new({name: "Gems and Minerals", cost: 0}) }

  it 'should have a class' do
    expect(exhibit).to be_a Exhibit
  end

  it 'should have a name'do
    expect(exhibit.name).to eq ("Gems and Minerals")
  end

  it 'should inform the cost' do
    expect(exhibit.cost).to eq 0
  end
end