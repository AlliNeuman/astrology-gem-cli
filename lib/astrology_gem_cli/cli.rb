class AstrologyGemCli::CLI

  def call
    list_horoscope_signs
    menu

  end

  def list_horoscope_signs
    puts "Check Your Horoscope!"
    puts "astrology signs"
  end

  def menu
    puts "Enter your astrological sign or type 'exit' to exit the program."
    while input != 'exit'

    input = gets.strip.downcase
    case input
    when ""

  end




end
