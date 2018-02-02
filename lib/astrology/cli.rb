class Astrology::Cli

  def call
    @headline = Astrology::Scraper.scrape_kcstar
    list_horoscopes
    menu
    goodbye
  end

  def list_horoscopes

      puts printf("%37s", "Horoscope Sign & Birthdate Range")
      puts "----------------------------------------------"
    Astrology::Horoscope.all.each.with_index(1) do |horoscope, i|
      puts "#{sprintf("%3d", i)}.  #{horoscope.name.ljust(15)} #{horoscope.dates}"
    end
  end

  def menu
    input = nil
    while input != "exit"

      puts "To see your horoscope, enter the number 1-12 that corresponds with your astrological sign."
      puts "Type 'list' to see the list of signs or type 'exit'."
      input = gets.strip.downcase
      if input.to_i > 0
        horoscope = Astrology::Horoscope.all[input.to_i - 1]
        puts "#{@headline}"
        puts "----------------------------------------------"
        puts "#{horoscope.name}"
        puts "#{horoscope.summary}"
        puts "Lucky Number: #{horoscope.lucky_number}"
        puts "Financial Outlook: #{horoscope.financial_outlook}"
        puts "Partner Compatibility: #{horoscope.compatible_sign}"


      elsif input == "list"
        list_horoscopes
      else
        "not sure what you want, type 'list' or 'exit'"
      end
    end
  end

  def goodbye
    puts "Check back again for your daily horoscope!"
  end

end
