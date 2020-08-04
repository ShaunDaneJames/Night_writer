require './lib/english_keys'
require_relative 'read_message'
require './lib/cell'
include EnglishKeys

class NightWriter
  @encrypted_message = []


  #Turn this into a class, assign the english message
  # to a variable so it can be reference later for
  # confirmation output to the terminal
  english_message = File.read(ARGV[0])
    english_letters = english_message.split("")
    english_letters.count.times do |letter|
      @encrypted_message << english_keys[english_letters.shift]
      # @encrypted_message << Cell.new(english_keys[english_letters.shift])
      end




  braille_message = File.open(ARGV[1], "w") {|file| file.write @encrypted_message}

end
