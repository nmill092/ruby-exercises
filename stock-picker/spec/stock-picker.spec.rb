require 'spec_helper'
require_relative '../stock-picker'

RSpec.describe 'Stock Picker' do
  describe "stock picker exercise" do
    it "correctly identifies the best day to buy and sell from a list of days" do
      expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    end

    it "returns [0, 0] when there is no profitable pair of days to buy and sell" do
      expect(stock_picker([10, 8, 6, 4, 2])).to eq([0, 0])
    end

    it "correctly identifies the best days to buy and sell when the best day to sell is on the last day" do
      expect(stock_picker([1, 2, 3, 4, 5, 6])).to eq([0, 5])
    end

    it "correctly identifies the best day to buy and sell when prices are decreasing" do
      expect(stock_picker([5, 4, 3, 2, 1])).to eq([0, 0])
    end
  end
end
