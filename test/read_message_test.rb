require 'minitest/autorun'
require 'minitest/pride'
require './lib/read_message'

class ReadMessageTest < Minitest::Test

  def test_it_exists
    message = File.open("message.txt")
    braille = File.open("braille.txt")
    read = ReadMessage.new(message, braille)
    assert_instance_of ReadMessage, read
  end

  def test_it_can_read

  end
end
