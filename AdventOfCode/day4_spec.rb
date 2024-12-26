# frozen_string_literal: true

require 'pry'
require_relative './day4'

RSpec.describe Day4_a do
  let(:input) { Day4_a.new(input_str) }

  describe '#split_into_char_arrays' do
    context 'when given a string input' do
      let(:input_str) do
        "MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"
      end
      it 'will split into corresponding cahr array' do
        expect(Day4_a.new(input_str).split_into_char_arrays).to eq([
                                                                     %w[M M M S X X M A S M],
                                                                     %w[M S A M X M S M S A],
                                                                     %w[A M X S X M A A M M],
                                                                     %w[M S A M A S M S M X],
                                                                     %w[X M A S A M X A M M],
                                                                     %w[X X A M M X X A M A],
                                                                     %w[S M S M S A S X S S],
                                                                     %w[S A X A M A S A A A],
                                                                     %w[M A M M M X M M M M],
                                                                     %w[M X M X A X M A S X]
                                                                   ])
      end
    end
  end

  describe '#count_valid_east_position' do
    context 'when given char input str' do
      let(:input) {"MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"}
      let(:input_str) {Day4_a.new(input)}

      it 'check east position and increment the count if valid' do
        input_str.split_into_char_arrays
        count_east = input_str.count_valid_east_position
        expect(count_east).to eq(3)
      end
    end
  end

  describe '#count_valid_west_position' do
    context 'when given char input str' do
      let(:input) {"MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"}
      let(:input_str) {Day4_a.new(input)}

      it 'check west position and increment the count if valid' do
        input_str.split_into_char_arrays
        count_west = input_str.count_valid_west_position
        expect(count_west).to eq(2)
      end
    end
  end

  describe '#count_valid_north_position' do
    context 'When given char input string' do
      let(:input) {"MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"}
      let(:input_str) {Day4_a.new(input)}

      it 'will check north position and increment count if valid' do
        input_str.split_into_char_arrays
        count_north = input_str.count_valid_north_position
        expect(count_north).to eq(1)
      end
    end
  end

  describe '#count_valid_south_position' do
    context 'When given char input string' do
      let(:input) {"MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"}
      let(:input_str) {Day4_a.new(input)}

      it 'will check south position and increment count if valid' do
        input_str.split_into_char_arrays
        count_south = input_str.count_valid_south_position
        expect(count_south).to eq(2)
      end
    end
  end

  describe '#count_valid_north_west_position' do
    context 'When given char input string' do
      let(:input) {"MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX"}
      let(:input_str) {Day4_a.new(input)}

      it 'will check north west position and increment count if valid' do
        input_str.split_into_char_arrays
        count_north_west = input_str.count_valid_north_west_position
        expect(count_north_west).to eq(2)
      end
    end
  end
end
