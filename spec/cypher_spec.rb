require 'rspec'
require_relative '../lib/caesar_cypher'

RSpec.describe 'cypher' do
  it "encodes messages" do
    expect(caesar_cypher("cat", 1)).to eq("dbu")
    expect(caesar_cypher("cat", 2)).to eq("ecv")
    expect(caesar_cypher("DoG", 1)).to eq("EpH")
    expect(caesar_cypher("dOg", 2)).to eq("fQi")
    expect(caesar_cypher("Testing123", 1)).to eq("Uftujoh123")
    expect(caesar_cypher("test ing 1 2 3", 1)).to eq("uftu joh 1 2 3")
    expect(caesar_cypher("blah! Blah? blah.", 3)).to eq("eodk! Eodk? eodk.")
  end
end

RSpec.describe 'decoder' do
  it "decodes messages" do
    expect(decode("dbu", 1)).to eq("cat")
    expect(decode("ecv", 2)).to eq("cat")
    expect(decode("EpH", 1)).to eq("DoG")
    expect(decode("fQi", 2)).to eq("dOg")
    expect(decode("Uftujoh123", 1)).to eq("Testing123")
    expect(decode("uftu joh 1 2 3", 1)).to eq("test ing 1 2 3")
    expect(decode("eodk! Eodk? eodk.", 3)).to eq("blah! Blah? blah.")
  end
end
