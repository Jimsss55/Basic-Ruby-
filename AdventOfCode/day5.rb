class Day5_a

  attr_accessor :input_string
  def initialize(input_string)
    @input_string = input_string
    @ordering_rules = []
    @page_updates =[]
    @order = []
  end

  def split_input_to_ordering_updates
    @ordering_rules, @page_updates = @input_string.split("\n\n")
  end

  def split_ordering_rules_into_arrays
    @ordering_rules = @ordering_rules.split.map{|str| str.split('|')}

    @ordering_rules = @ordering_rules.map do |rule|
      rule.map{|str| str.to_i}
    end
  end

  def split_updates_to_arrays
    @page_updates = @page_updates.split("\n").map {|str| str.split(",")}

    @page_updates = @page_updates.map do |update|
      update.map(&:to_i)
    end
  end

  def find_correct_order
    @page_updates.each do |updates|
      updates.each do |update|
        if @ordering_rules.include?([updates])
          @order << update
        end
      end
    end
    @order
  end

  def call
    split_input_to_ordering_updates
    split_ordering_rules_into_arrays
    split_updates_to_arrays
    find_correct_orders
  end
end