class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError if game.any?{|arr| !(arr[1] =~ /^(s|p|r){1}$/i)}
  if (game.map{|arr| arr[1]}.join("") =~ /^rs|sp|pr$/i)
    return game[0]
  elsif (game.map{|arr| arr[1]}.join("") =~ /^sr|ps|rp$/i)
    return game[1]
  else
    return game[0]
  end
end

def rps_tournament_winner(tournament)
  if tournament.first.first.is_a? String
    return rps_game_winner(tournament)
  else
    return rps_tournament_winner([rps_tournament_winner(tournament.first), rps_tournament_winner(tournament.last)])
  end
end

#feel free to add your own helper functions as needed


#puts rps_game_winner([['Scissor', 'S'],['Scissor', 'S'],['Scissor', 'S']]).inspect

puts rps_game_winner([['Scissor', 'S'], ['Rock', 'R']]).inspect
puts rps_game_winner([['Rock', 'R'], ['Scissor', 'S']]).inspect

puts rps_game_winner([['Scissor', 'S'], ['Paper', 'P']]).inspect
puts rps_game_winner([['Paper', 'P'], ['Scissor', 'S']]).inspect

puts rps_game_winner([['Paper', 'P'], ['Rock', 'R']]).inspect
puts rps_game_winner([['Rock', 'R'], ['Paper', 'P']]).inspect

puts rps_game_winner([['Haider', 'P'], ['Hameed', 'P']]).inspect
puts rps_game_winner([['Hameed', 'P'], ['Haider', 'P']]).inspect

puts rps_tournament_winner([
	[["Joe", "P"], ["Mary", "S"]],
	[["Bob", "R"], ["Alice", "S"]]
]).inspect

puts rps_tournament_winner([
	[["Steve", "S"], ["Jane", "P"]],
	[["Ted", "R"], ["Carol", "P"]]
]).inspect

puts rps_tournament_winner([
	[
		[["Joe", "P"], ["Mary", "S"]],
		[["Bob", "R"], ["Alice", "S"]]
	],
	[
		[["Steve", "S"], ["Jane", "P"]],
		[["Ted", "R"], ["Carol", "P"]]
	]
]).inspect
