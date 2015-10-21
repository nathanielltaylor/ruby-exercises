require 'rspec'
require_relative '../lib/caesar_cypher'

RSpec.describe 'cypher' do
  it "works" do
    expect(caesar_cypher("cat", 1)).to eq("dbu")
    expect(caesar_cypher("cat", 2)).to eq("ecv")
    expect(caesar_cypher("dog", 1)).to eq("eph")
    expect(caesar_cypher("dog", 2)).to eq("fqi")
    expect(caesar_cypher("testing123", 1)).to eq("uftujoh123")
    expect(caesar_cypher("test ing 1 2 3", 1)).to eq("uftu joh 1 2 3")
    expect(caesar_cypher("blah! blah? blah.", 3)).to eq("eodk! eodk? eodk.")
  end
end
