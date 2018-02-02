class Astrology::Horoscope

  attr_accessor :headline, :name, :dates, :summary, :lucky_number, :financial_outlook, :compatibility

  # @@all = []
  #
  # def initialize
  #   @headline
  #   @name = horoscopes[:name]
  #   @dates = horoscopes[:dates]
  #   @summary = horoscopes[:summary]
  #   @lucky_number = horoscopes[:lucky_number]
  #   @financial_outlook = horoscopes[:financial_outlook]
  #   @compatibility = horoscopes[:compatibility]
  #   # @@all << self
  #
  # end

  def self.today
    #scrape website http://www.kansascity.com/entertainment/horoscopes/ and return horoscope details
    self.scrape_horoscopes

  end

  def self.scrape_horoscopes
    horoscopes = []

    horoscopes << self.scrape_kcstar

    horoscopes
  end

  def self.scrape_kcstar
    doc = Nokogiri::HTML(open("http://www.kansascity.com/entertainment/horoscopes/"))
    # horoscope.headline = doc.search("div.teaser h4.title").text.gsub("\n", "")

    doc.css("div#content-body-6192").each do |horoscope|
      horoscope.css("div.horoscope").each do |sign|

        horoscope_name = sign.css("h2.sign").text
        horoscope_dates = sign.css("div.dates").text
        horoscope_summary = sign.css("p").text
        horoscope_lucky_number = sign.css("div.lucky_number").text.gsub("Lucky Number","")
        horoscope_financial_outlook = sign.css("div.financial_outlook").text.gsub("Financial Outlook", "")
        horoscope_compatible_sign = sign.css("div.compatible_sign").text.gsub("Compatible Sign", "")

        {:name => horoscope_name, :dates => horoscope_dates, :summary => horoscope_summary, :lucky_number => horoscope_lucky_number, :financial_outlook => horoscope_financial_outlook, :compatibility => horoscope_compatible_sign}
      end
    end
  end
end
