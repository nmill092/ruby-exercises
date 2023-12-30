require 'spec_helper'
require_relative '../caesar-cipher'

RSpec.describe 'Caesar Cipher' do
  describe "caesar cipher exercise" do

    it "should shift each letter by {factor} number of positions" do
      expect(caesar_cipher("Hello, World!", 3)).to eql("Khoor, Zruog!")
    end

    it "should maintain the case of each letter of the original string" do
      expect(caesar_cipher("OpenAI GPT-3", -5)).to eql("JkziVD BKO-3")
    end

    it "should wrap around the alphabet for large shifts" do
      expect(caesar_cipher("Hello, is it me you're looking for?", 30)).to eql("Lipps, mw mx qi csy'vi pssomrk jsv?")
    end

  end
end
