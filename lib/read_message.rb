class ReadMessage

  def read_message
    if ARGV[0] == "message.txt"
      english_message = File.read(ARGV[0])
    elsif ARGV[0] == "braille.txt"
      braille_message = File.read(ARGV[0])
    else
      p "Invalid selection. Please make an appropirate selection."
    end
  end
  
end
