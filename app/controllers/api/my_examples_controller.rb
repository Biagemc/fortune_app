class Api::MyExamplesController < ApplicationController
  def my_fortune
    @fortunes = [
      "Today is your lucky day. Your are going to win the lottery",
      "You will meet a new friend today",
      "You will get a gift today",
    ]
    @randon_fortune = @fortunes[rand(@fortunes.length)]
    @random_numbers = rand(60)
    render "fortune.json.jb"
  end
end
