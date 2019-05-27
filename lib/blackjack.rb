total = 0;

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(10) + 1
end

def display_card_total(total)
   puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  move = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
card1 = deal_card
card2 = deal_card
total = card1 + card2
display_card_total(total)
return total
end

def hit?(total)
  prompt_user
  move = get_user_input
  if move == "s"
    return total
  elsif move == "h"
    total += deal_card
  else
    invalid_command
    prompt_user
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total >= 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
