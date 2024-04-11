# frozen_string_literal: true

# TradingBot Class
class TradingBot
  attr_accessor :name, :active, :strategy

  def initialize(name, strategy)
    @name = name
    @active = false
    @strategy = strategy
    @prices = [] # Track historical prices for SMA calculation
  end

  def activate
    @active = true
    puts "#{@name} is now active."
  end

  def deactivate
    @active = false
    puts "#{@name} is now inactive."
  end

  def make_decision(price)
    @prices << price

    # assuming sma_window as 10. can be changable as per need
    sma_window = 10

    return :hold unless @prices.length >= sma_window

    if @prices.length >= sma_window
      short_term_sma = @prices[-sma_window..].sum / sma_window
      long_term_sma = @prices.sum / @prices.length
    end

    action = calculate_action(short_term_sma, long_term_sma)

    puts "#{@name} decided to #{action} (Short SMA: #{short_term_sma}, Long SMA: #{long_term_sma})"
    action
  end

  private

  def calculate_action(short_term_sma, long_term_sma)
    if short_term_sma > long_term_sma
      :buy
    elsif short_term_sma < long_term_sma
      :sell
    else
      :hold
    end
  end
end
