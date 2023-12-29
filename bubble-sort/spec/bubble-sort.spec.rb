require 'spec_helper'
require_relative '../bubble-sort'

RSpec.describe 'Bubble Sort' do
  describe 'bubble sort' do

    it 'correctly sorts an array of numbers' do
      expect(bubble_sort([1,3,5,2,9,60,4])).to eq([1,2,3,4,5,9,60])
    end

    it 'correctly sorts an array of strings (case insensitively)' do
      expect(bubble_sort(["Alex", "Abacus", "android", "Adroit", "Crustacean", "bibimbap"])).to eq(["Abacus", "Adroit", "Alex", "android", "bibimbap", "Crustacean"])
    end

    it 'should return an array of the same size as the input array' do
      expect(bubble_sort([1,2,3,4,5]).length).to eq(5)
    end

    it 'correctly handles both negative and positive numbers' do
      expect(bubble_sort([-1,-3,5,6,-2])).to eq([-3, -2, -1, 5, 6])
    end

  end
end
