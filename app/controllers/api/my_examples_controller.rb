class Api::MyExamplesController < ApplicationController
  def my_fortune
    fortunes = [
      "Today is your lucky day. Your are going to win the lottery",
      "You will meet a new friend today",
      "You will get a gift today",
    ]
    @fortune = fortunes[rand(fortunes.length)]
    @random_numbers = rand(60)
    render "fortune.json.jb"
  end

  def lotto_numbers
    6.times do
      random_numbers = rand(1..60)
      @numbers = random_numbers
    end
    render "lotto_numbers.json.jb"
  end
end
