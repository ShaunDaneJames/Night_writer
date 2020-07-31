require_relative 'english_keys'

class NightWriter
  include EnglishKeys

  def initialize(message, braille)
    @message = message
    @braille = braille
  end

  def read
    message_data = @message.read
  end

end
