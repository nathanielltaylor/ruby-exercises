require 'rspec'
require_relative '../lib/palindrome'

RSpec.describe 'palindrome checker' do
  it "can successfully identify palindromic phrases" do
    expect(palindrome?("A Santa at NASA")).to eq(true)
    expect(palindrome?("racecar")).to eq(true)
    expect(palindrome?("eye")).to eq(true)
    expect(palindrome?("Acrobats stab orca")).to eq(true)

    expect(palindrome?("grey furry cat")).to eq(false)
    expect(palindrome?("programming")).to eq(false)
    expect(palindrome?("this is not a palindrome")).to eq(false)
  end
end
