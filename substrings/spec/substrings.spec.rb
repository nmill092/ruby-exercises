require 'spec_helper'
require_relative '../substrings'

RSpec.describe 'Substrings' do
  describe 'twenty-first century predicate exercise' do

    it 'tabulates the number of matching substrings within multiple find_word_lengths' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expected_output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
     substrings("Howdy partner, sit down! How's it going?", dictionary).should =~ (expected_output)
    end

    it 'tabulates the number of matching substrings within a single word' do
      substrings("Below", ["below", "low"]).should =~ {"below" => 1, "low" => 1}
    end

    it 'is case insensitive for both the input string and list of substrings' do
      substrings("BeLoW Sea LEVEL", ["below", "LOw", "sea", "le", "be", "level"]).should =~ {"below" => 1, "LOw" => 1, "sea" => 1, "le" => 1, "be" => 1, "level" => 1}
    end

    it 'should return an empty object if the dictionary is empty' do
      substrings("Below sea level", []).should eql({})
    end
  end
end
