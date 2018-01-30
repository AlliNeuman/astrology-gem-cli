class AstrologyGemCli::CLI

  def call
    list_horoscope_signs
    menu
    goodbye
  end

  def list_horoscope_signs
    puts "Check Your Horoscope!"
    puts "1. Aquarius: Jan 20 - Feb 18"
    puts "2. Pisces: Feb 19 - Mar 20"
    puts "3. Aries: Mar 21 - Apr 19"
    puts "4. Taurus: Apr 20 - May 20"
    puts "5. Gemini: May 21 - Jun 20"
    puts "6. Cancer: Jun 21 - Jul 22"
    puts "7. Leo: Jul 23 - Aug 22"
    puts "8. Virgo: Aug 23 - Sep 22"
    puts "9. Libra: Sep 23 - Oct 22"
    puts "10. Scorpio: Oct 23 - Nov 21"
    puts "11. Sagittarius: Nov 22 - Dec 21"
    puts "12. Capricorn: Dec 22 - Jan 19"
  end

  def menu
    input = nil
    while input != "exit"

      puts "To see your horoscope, enter the number 1-12 that corresponds with your astrological sign or type 'exit'"
      input = gets.strip.downcase
      case input
      when "1"
        puts "You are an Aquarius"
      when "2"
        puts "You are a Pisces"
      when "3"
        puts "you are an Aries"
      when "4"
        puts "You are a Taurus"
      when "5"
        puts "You are a Gemini"
      when "6"
        puts "You are a Cancer"
      when "7"
        puts "You are a Leo"
      when "8"
        puts "You are a Virgo"
      when "9"
        puts "You are a Libra"
      when "10"
        puts "You are a Scorpio"
      when "11"
        puts "You are a Sagittarius"
      when "12"
        puts "You are a Capricorn"
      else
        puts "Enter your sign or type 'exit'"


      end
    end
  end

  def goodbye
    puts "check back again for your daily horoscope!"
  end

end
