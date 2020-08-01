require_relative 'english_keys'
module BrailleKeys
  include EnglishKeys
  attr_reader :english_keys

  def braille_keys

    english_keys.invert

  end
end
