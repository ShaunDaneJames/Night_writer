class Cell
  attr_reader :first_row,
              :second_row,
              :thrid_row
              
  def initialize(letter_data)
    @first_row = letter_data[0]
    @second_row = letter_data[1]
    @thrid_row = letter_data[2]
  end

  def make_cell(letter_data)
    "#{@first_row}\n" +
    "#{@second_row}\n" +
    "#{@thrid_row}"
  end
end
