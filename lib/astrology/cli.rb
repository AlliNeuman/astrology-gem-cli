class Astrology::Cli


  def call
    @headline = Astrology::Scraper.scrape_kcstar
    list_horoscopes
    menu
    goodbye
  end

    def list_horoscopes
      Astrology::Horoscope.all.each.with_index(1) do |horoscope, i|
        puts "#{i}. #{horoscope.name}"
      end
    end

    def menu
      input = nil
      while input != "exit"

        puts "To see your horoscope, enter the number 1-12 that corresponds with your astrological sign."
        puts "Alternatively, type 'list' to see the list of signs or type 'exit'"
        input = gets.strip.downcase
        if input.to_i > 0
          horoscope = Astrology::Horoscope.all[input.to_i - 1]
          puts "#{@headline}"
          puts "#{horoscope.name}"
          puts "#{horoscope.dates}"
          puts "#{horoscope.summary}"
          puts "Lucky Number: #{horoscope.lucky_number}"
          puts "Financial Outlook: #{horoscope.financial_outlook}"
          puts "Partner Compatibility: #{horoscope.compatibility}"

        elsif input == "list"
          list_horoscope
        else
          "Not sure what you want, type 'list' or 'exit'."
        end
      end
    end

    def goodbye
      puts "Check back again for your daily horoscope!"
    end

  end
