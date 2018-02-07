class Astrology::Cli

  def call
    @headline = Astrology::Scraper.scrape_kcstar
    list_horoscopes
    menu
    goodbye
  end

  def list_horoscopes
    puts "Welcome to Astrology Gem!".center(50)
    puts "Enter a number 1-12 to view your daily horoscope".center(50)
    puts "**************************************************"
    puts "Horoscope Sign & Birthdate Range".center(50)
    puts "--------------------------------------------------"
    Astrology::Horoscope.all.each.with_index(1) do |horoscope, i|
      puts "#{sprintf("%3d", i)}.  #{horoscope.name.ljust(15)} #{horoscope.dates}"
    end
  end

  def menu
    input = nil
    while input != "exit"

      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 13
        horoscope = Astrology::Horoscope.all[input.to_i - 1]
        puts "**************************************************"
        puts @headline.center(50)
        puts "--------------------------------------------------"
        puts horoscope.name.center(50)
        puts " "
        # puts horoscope.paragraph_summary
        puts horoscope.paragraph_summary
        puts " "
        puts "Lucky Number:  #{horoscope.lucky_number}"
        puts "Financial Outlook:  #{horoscope.financial_outlook}"
        puts "Partner Compatibility:  #{horoscope.compatible_sign}"
        puts "--------------------------------------------------"
        puts "Type 'list' to see the list of signs again."
        puts "Type 'exit' if you are done for the day!"

      elsif input == "list"
        list_horoscopes
      else input.to_i > 12 || input != "list"
        puts "Not sure what you are looking for."
        puts "Type 'list', 'exit', or make a valid selection."
      end
    end
  end


  def goodbye
    puts "Check back again for your daily horoscope!"
  end

end
