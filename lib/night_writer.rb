require './lib/english_keys'
require_relative 'read_message'
include EnglishKeys

class NightWriter
  @encrypted_message = []


  english_message = File.read(ARGV[0])
    x = english_message.split("")
    x.count.times do |letter|
      @encrypted_message << english_keys[x.shift]
    # require "pry"; binding.pry
      end


#Turn this into a class, assign the english message
# to a variable so it can be reference later for
# confirmation output to the terminal


  braille_message = File.open(ARGV[1], "w") {|file| file.write @encrypted_message}

  #
  # puts "Created #{ARGV[1]} containing #{english_message.split("").count} characters"
  #
  # def encode
  #   braille_message = File.open(ARGV[1], "w") {|file| file.write english_message}
  # end
  #
end
