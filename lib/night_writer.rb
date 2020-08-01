require_relative 'english_keys'
require_relative 'read_message'

class NightWriter
  include EnglishKeys

  input_array = ARGV
  english_message = File.read(ARGV[0])
  braille_message = File.open(ARGV[1], "w") {|file| file.write english_message}

# require "pry"; binding.pry

  puts "Created #{ARGV[1]} containing #{english_message.split("").count} characters"
  braille_message
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
