require 'pry'
require_relative './day5'

RSpec.describe Day5_a do
  let(:input) {Day5_a.new(input_string)}

  describe '#split_input_to_ordering_updates' do
    context 'With correct user input' do
      let(:input_string) do
        "47|53\n97|13\n97|61\n97|47\n75|29\n61|13\n75|53\n29|13\n\n75,47,61,53,29\n97,61,53,29,13\n75,29,13"
      end
      it 'splits the input to ordering rules and updates respectively' do
        expect(Day5_a.new(input_string).split_input_to_ordering_updates).to eq(["47|53\n97|13\n97|61\n97|47\n75|29\n61|13\n75|53\n29|13", "75,47,61,53,29\n97,61,53,29,13\n75,29,13"])
      end
    end
  end

  describe '#split_ordering_rules_into_arrays' do
    context 'With correct user input' do
      let(:input_string) do
        "47|53\n97|13\n97|61\n97|47\n75|29\n61|13\n75|53\n29|13\n\n75,47,61,53,29\n97,61,53,29,13\n75,29,13"
      end

      it 'will split the input into arrays' do
        day5_a = Day5_a.new(input_string)
        split_result = day5_a.split_input_to_ordering_updates
        ordering_rules_arr = day5_a.split_ordering_rules_into_arrays
        ordering_rules=[
          [47,53],
          [97,13],
          [97,61],
          [97,47],
          [75,29],
          [61,13],
          [75,53],
          [29,13],
        ]
        expect(ordering_rules_arr).to eq(ordering_rules)
      end
    end
  end

  describe '#split_updates_to_arrays' do
    context 'With correct user input' do
      let(:input_string) do
        "47|53\n97|13\n97|61\n97|47\n75|29\n61|13\n75|53\n29|13\n\n75,47,61,53,29\n97,61,53,29,13\n75,29,13"
      end

      it 'puts the ordering rule into arrays' do
        day5_a = Day5_a.new(input_string)
        split_result = day5_a.split_input_to_ordering_updates
        updates_rule_from_split_result = day5_a.split_updates_to_arrays
        update_array = [
          [75,47,61,53,29],
          [97,61,53,29,13],
          [75,29,13]
        ]
        expect(updates_rule_from_split_result).to eq(update_array)
      end
    end
  end

  describe '#find_correct_order' do
    context 'With correct ordering rules and updates' do
      let(:input_string) do
        "47|53\n97|13\n97|61\n97|47\n75|29\n61|13\n75|53\n29|13\n\n75,47,61,53,29\n97,61,53,29,13\n75,29,13"
      end

      it 'finds the correct order' do
        day5_a = Day5_a.new(input_string)
        split_result = day5_a.split_input_to_ordering_updates
        ordering_rules = day5_a.split_ordering_rules_into_arrays
        updates_rules = day5_a.split_updates_to_arrays
        order = [[75,56], [56,30]]
        correct_order = day5_a.find_correct_order

        expect(correct_order).to eq(order)
      end
    end
  end
end