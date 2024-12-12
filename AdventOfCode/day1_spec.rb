require_relative './day1'
require 'pry'

RSpec.describe AocDay1 do
  let(:day1) {AocDay1.new([])}

  describe '#method_to_split' do
    context 'with correct input' do
      let(:input) { "3 4\n4 3\n2 8" }
      subject(:aoc_instance) { AocDay1.new(input) }

      it "splits the input to left and right arrays" do
        expect(AocDay1.new(input).method_to_split).to eq([[3,4,2], [4,3,8]])
      end
    end
  end

  describe '#method_to_sort' do
    context 'with correct input array' do
      let(:input) { "3 4\n4 3\n2 8" }
      let(:x) { AocDay1.new(input) }

      it 'This method will sort the arrays' do
        x.method_to_split
        x.method_to_sort
        expect(x.leftlist).to eq([2,3,4])
        expect(x.rightlist).to eq([3,4,8])
      end
    end
  end

  describe '#method_to_sum' do
    context 'with correct sorted left and right array' do
      let(:input) { "3 4\n4 3\n2 8" }
      let(:array_input) { AocDay1.new(input) }

      it 'This method will sum the difference of left and right arrays' do
        array_input.method_to_split
        array_input.method_to_sort
        # binding.pry
        expect(array_input.method_to_sum).to eq(6)
      end
    end
  end

  describe '#call' do
    context 'with correct output' do
      let(:input) { "3 4\n4 3\n2 8" }
      let(:array_input) { AocDay1.new(input) }

      it'will check the method_to_sum' do
        expect(array_input.call).to eq(6)
      end
    end
  end
end