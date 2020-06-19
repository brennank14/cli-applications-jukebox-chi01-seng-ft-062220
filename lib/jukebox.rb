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


def list(array)
  array.each_with_index do |value, index|
    puts "#{index + 1}: #{value}"
  end
end


def play(array)
  puts "Please enter a song name or number:"
  pick = gets.strip
  if (array.include?(pick))
    puts "Playing #{pick}"
  elsif (array.include?(pick.to_i - 1))
    puts array[pick.to_i -1]
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  command = gets.strip
  while command == "help" or command == "list" or command == "play" do
    if command == "help"
      help

    elsif command == "list"
      list(array)

    elsif command == "play"
      play(array)

    end
    puts "Please enter a command:"
    command = gets.strip
  end
  if command == "exit"
    exit_jukebox
  end
end
