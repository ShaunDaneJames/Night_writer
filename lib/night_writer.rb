require_relative 'english_keys'
require_relative 'read_message'

class NightWriter
  include EnglishKeys

  input_array = ARGV
  english_message = File.read(ARGV[0])
  ARGV[1] = File.open("braille.txt")
# require "pry"; binding.pry

  puts "Created #{ARGV[1]} containing #{english_message.split("").count} characters"
  # def initialize(message, braille)
  #   @message = message
  #   @braille = braille
  # end
  #
  # def read
  #   message_data = @message.read
  # end

  # def translate
  # end
end
