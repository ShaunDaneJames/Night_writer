require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_it_exists
    message = File.open("message.txt")
    braille = File.open("braille.txt")
    night_writer = NightWriter.new(message, braille)
    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_read_files
    message = File.open("message.txt")
    braille = File.open("braille.txt")
    night_writer = NightWriter.new(message, braille)
    expected = "You have to be odd to be number one."
    assert_equal expected, night_writer.read.chomp
  end
end
