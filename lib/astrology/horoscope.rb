class Astrology::Horoscope

  attr_accessor :headline, :name, :dates, :summary, :lucky_number, :financial_outlook, :compatible_sign

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self

  end

  def paragraph_summary
    paragraph = @summary
    words = paragraph.split(" ")
    current_line = 0
    correct_width = words.map do |word|
      letter_count = word.length
      current_line += letter_count + 1 #To count the space after

      if current_line < 51
        word
      else
        current_line = letter_count
        "\n#{word}"
      end
    end
    correct_width.join(" ")
  end



end
