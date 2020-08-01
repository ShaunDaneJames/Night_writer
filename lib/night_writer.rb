require_relative 'english_keys'

class NightWriter
  include EnglishKeys

  input_array = ARGV

  puts "Created #{ARGV[1]} containing 256 characters"
  puts input_array.to_s
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
