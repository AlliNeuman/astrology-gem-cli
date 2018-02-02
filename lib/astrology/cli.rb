class Astrology::Cli

  attr_accessor :headline, :name, :dates, :summary, :lucky_number, :financial_outlook, :compatibility

  def call
    list_horoscope_signs
    menu
    goodbye
  end

    def list_horoscope_signs
      horoscope = Astrology::Horoscope.today
      horoscope.each.with_index(1) do |horoscope, i|
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
          puts "Lucky Number: #{horoscope.lucky_number}"
          puts "Financial Outlook: #{horoscope.financial_outlook}"
          puts "Partner Compatibility: #{horoscope.compatibility}"


        elsif input == "list"
          list_horoscope_signs
        else
          "not sure what you want, type 'list' or 'exit'"
        end
      end
    end

    def goodbye
      puts "check back again for your daily horoscope!"
    end

  end
