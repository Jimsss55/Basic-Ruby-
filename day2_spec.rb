
#Pseudocode
# Step 1 : Split the input into arrays rows
# Step 2 : Check each row whether it is incrementing or decrementing
# Step 3 : Check whether the incremnt and decrement is 1 or 3
# Step 4 : count the safe and display it

require 'pry'
require_relative 'day2'

RSpec.describe Day2_a do
  let(:input) {Day2_a.new([])}

  describe '#method_to_split' do
    context 'with correct user input' do
      let(:input) {"7 6 4 2 1\n1 2 7 8 9\n9 7 6 2 1\n1 3 2 4 5\n8 6 4 4 1\n1 3 6 7 9"}

        it 'split the user input into each arrays' do
          expect(Day2_a.new(input).method_to_split).to eq([[7,6,4,2,1], [1,2,7,8,9], [9,7,6,2,1], [1,3,2,4,5], [8,6,4,4,1],[1,3,6,7,9]])
        end
    end
  end

  describe '#check_incre_decre' do
    context 'with correct user input into rows' do
      let(:input) {"7 6 4 2 1\n1 2 7 8 9\n9 7 6 2 1\n1 3 2 4 5\n8 6 4 4 1\n1 3 6 7 9"}
      let(:input_to_class) {Day2_a.new(input)}

      it 'This method will check consistent increment and decrement in each rows' do
        input_to_class.method_to_split

        result = input_to_class.check_incre_decre

        expect(result[0]).to eq("decrement")
        expect(result[1]).to eq("increment")
        expect(result[2]).to eq("decrement")
        expect(result[3]).to eq("none")
        expect(result[4]).to eq("none")
        expect(result[5]).to eq("increment")
      end
    end
  end

  describe '#method_valid_incre' do
    context 'with correct increment decrement and none values' do
    let(:input) {"7 6 4 2 1\n1 2 7 8 9\n9 7 6 2 1\n1 3 2 4 5\n8 6 4 4 1\n1 3 6 7 9"}
    let(:input_to_class) {Day2_a.new(input)}

    it 'This method will check if increment is valid and count' do
      input_to_class.method_to_split
      input_to_class.check_incre_decre
      valid_incre = input_to_class.method_valid_incre
      expect(valid_incre).to eq(1)
    end
    end
  end

  describe '#method_valid_decre' do
    context 'with correct increment decrement and none values' do
        let(:input) {"7 6 4 2 1\n1 2 7 8 9\n9 7 6 2 1\n1 3 2 4 5\n8 6 4 4 1\n1 3 6 7 9"}
        let(:input_to_class) {Day2_a.new(input)}

        it 'This method will check if decrement is valid and count' do
          input_to_class.method_to_split
          input_to_class.check_incre_decre
          valid_decre = input_to_class.method_valid_decre
          expect(valid_decre).to eq(1)
        end
    end
  end

  describe '#method_to_sum' do
    context 'with correct count' do
      let(:input) {"7 6 4 2 1\n1 2 7 8 9\n9 7 6 2 1\n1 3 2 4 5\n8 6 4 4 1\n1 3 6 7 9"}
      let(:input_to_class) {Day2_a.new(input)}

      it 'will provide the correct sum' do
        input_to_class.method_to_split
        input_to_class.check_incre_decre
        valid_incr_count = input_to_class.method_valid_incre
        valid_decre_count = input_to_class.method_valid_decre
        # binding.pry
        result = valid_decre_count
        expect(result).to eq(2)
      end
    end
  end
end