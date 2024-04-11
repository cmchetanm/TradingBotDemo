# Trading Bot

This is a simple Ruby class representing a trading bot that makes buy, sell, or hold decisions based on the Relative Strength Index (RSI) indicator.

## Usage

Instantiate the `TradingBot` class by providing a name and a trading strategy:

```ruby
my_bot = TradingBot.new("TradingBot demo", nil)
```
To activate the bot:

```ruby
my_bot.activate
```

To deactivate the bot:

```ruby
my_bot.deactivate
```
To make a trading decision based on market data:

```ruby
# Simulate price updates
price1 = 10
price2 = 12
price3 = 15

# create a bot instance (replace "SMA Bot" with your desired name)
my_bot = TradingBot.new("TradingBot demo", nil)

my_bot.activate

# trade decisions for each simulated price
decision1 = my_bot.make_decision(price1)
decision2 = my_bot.make_decision(price2)
decision3 = my_bot.make_decision(price3)

my_bot.deactivate
```

Note:

Atleast 10 values needs to be emmitted for prices to get a value as initial sma_window is set to 10
