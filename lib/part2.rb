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