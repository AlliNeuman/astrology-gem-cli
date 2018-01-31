class AstrologyGemCli::CLI

  def call
    list_horoscope_signs
    menu
    goodbye
  end

  def list_horoscope_signs

    @horoscope = AstrologyGemCli::Horoscope.today
    @horoscope.each.with_index(1) do |horoscope, i|
      puts "#{i}. #{horoscope.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"

      puts "To see your horoscope, enter the number 1-12 that corresponds with your astrological sign, type 'list' to see the list of signs or type 'exit'"
      input = gets.strip.downcase
      if input.to_i > 0
        horoscope = @horoscope[input.to_i - 1]
        puts "#{horoscope.headline}"
        puts "#{horoscope.name}"
        puts "#{horoscope.dates}"
        puts "#{horoscope.summary}"
        puts "Lucky Number: #{horoscope.luckynumber}"
        puts "Financial Outlook: #{horoscope.financialoutlook}"
        puts "Partner Compatibility: #{horoscope.compatibility}"


      elsif input == "list"
        list_horoscope_signs
      else
        "not sure what you want, type 'list' or 'exit'"
      # case input
      # when "1"
      #   puts "You are an Aquarius"
      # when "2"
      #   puts "You are a Pisces"
      # when "3"
      #   puts "You are an Aries"
      # when "4"
      #   puts "You are a Taurus"
      # when "5"
      #   puts "You are a Gemini"
      # when "6"
      #   puts "You are a Cancer"
      # when "7"
      #   puts "You are a Leo"
      # when "8"
      #   puts "You are a Virgo"
      # when "9"
      #   puts "You are a Libra"
      # when "10"
      #   puts "You are a Scorpio"
      # when "11"
      #   puts "You are a Sagittarius"
      # when "12"
      #   puts "You are a Capricorn"
      # else
      #   puts "Enter your sign or type 'exit'"


      end
    end
  end

  def goodbye
    puts "check back again for your daily horoscope!"
  end

end
