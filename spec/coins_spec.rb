require 'rspec'
require_relative '../lib/minimum_coins'

RSpec.describe 'minimum coin calculator' do
  it "returns the correct number of coins" do
    expect(minimum_coins(20)).to eq([10, 10])
    expect(minimum_coins(35)).to eq([25, 10])
    expect(minimum_coins(37)).to eq([25, 10, 1, 1])
    expect(minimum_coins(101)).to eq([100, 1])
    expect(minimum_coins(0)).to eq([])
  end
end
