require('sinatra')
require('./lib/rock_paper_scissors')


get('/') do
  erb(:index)
end

get('/rock_paper_scissors') do

  player = params.fetch("player")
  opponent = ["rock", "paper", "scissors"].sample()

  winner = player.rock_paper_scissors(opponent)

  if winner == true
    @output = "You win!"
  elsif winner == false
    @output = "Computer won :("
  else
    puts "got here"
    @output = "Tie!"
  end

  erb(:rock_paper_scissors)
end
