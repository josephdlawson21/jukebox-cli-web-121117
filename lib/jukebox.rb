require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_index do |index|
    puts "#{index + 1}. #{songs[index]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if songs.include?(answer)
    puts "Playing #{answer}"
  elsif (1..songs.count).include?(answer.to_i)
    puts "Playing #{songs[answer.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp
  while answer != "exit"
    case answer
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Please enter a valid command"

    end
    puts "Please enter a command:"
    answer = gets.chomp
  end
  exit_jukebox
end
