require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_it_exists
    messge = File.open("message.txt")
    braille = File.open("braille.txt")
    night_writer = NightWriter.new(message, braille)
    assert_instance_of NightWriter, night_writer
  end

end
