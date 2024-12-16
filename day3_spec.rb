require_relative 'day3'
require 'pry'

RSpec.describe Day3_a do
  let(:input) {Day3_a.new(str)}

  describe '#split_string' do
    context 'With correct input' do
      let(:input_to_class) {"xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"}

      it 'clean the sting into desired input' do
        expect(Day3_a.new(input_to_class).split_string).to eq([["2", "4"], ["5", "5"], ["11", "8"], ["8", "5"]])
      end
    end
  end

  describe '#multiply_each_arr' do
    context 'With correct split input' do
      let (:input) {"xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"}
      let (:input_to_class) {Day3_a.new(input)}

      it 'will multiply each array' do
        input_to_class.split_string
        result=input_to_class.multiply_each_arr
        expect(result).to eq(161)
      end
    end
  end

  describe '#call' do
    context 'With correct output methods' do
      let(:input) {"xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"}
      let(:input_to_class) {Day3_a.new(input)}

      it 'will output the correct output' do
        expect(input_to_class.call).to eq(161)
      end
    end

  end
end