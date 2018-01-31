class AstrologyGemCli::Horoscope

  def self.today
    puts "Check Your Horoscope!"

    puts "1. Aries: Mar 21 - Apr 19"
    puts "2. Taurus: Apr 20 - May 20"
    puts "3. Gemini: May 21 - Jun 20"
    puts "4. Cancer: Jun 21 - Jul 22"
    puts "5. Leo: Jul 23 - Aug 22"
    puts "6. Virgo: Aug 23 - Sep 22"
    puts "7. Libra: Sep 23 - Oct 22"
    puts "8. Scorpio: Oct 23 - Nov 21"
    puts "9. Sagittarius: Nov 22 - Dec 21"
    puts "10. Capricorn: Dec 22 - Jan 19"
    puts "11. Aquarius: Jan 20 - Feb 18"
    puts "12. Pisces: Feb 19 - Mar 20"

    horoscope_1 = self.new
    horoscope_1.name = "Aquarius"
    horoscope_1.summary = "summary"
    horoscope_1.luckynumber = "373"
    horoscope_1.financialoutlook = "very good"
    horoscope_1.compatibility = "Sagittarius"

    horoscope_2 = self.new
    horoscope_2.name = "Aquarius"
    horoscope_2.summary = "summary"
    horoscope_2.luckynumber = "373"
    horoscope_2.financialoutlook = "very good"
    horoscope_2.compatibility = "Sagittarius"


  end
end
