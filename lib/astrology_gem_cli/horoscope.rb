class AstrologyGemCli::Horoscope

  attr_accessor :headline, :name, :dates, :summary, :luckynumber, :financialoutlook, :compatibility

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

    #headline code and cutting out the \n in the string
    # headline = doc.search("div.teaser h4.title").text.gsub("\n", "")

    doc.css("div.horoscope").each do |horoscope|
      horoscope_name = horoscope.css("h2.sign").text
      horoscope_dates = horoscope.css("div.dates").text
      horoscope_summary = horoscope.css("p").text
      lucky_number = horoscope.css("div.lucky_number").text.gsub("Lucky Number","")
      financial_outlook = horoscope.css("div.financial_outlook").text.gsub("Financial Outlook", "")
      compatible_sign = horoscope.css("div.compatible_sign").text.gsub("Compatible Sign", "")
      binding.pry
    end
    horoscope
    binding.pry
  end
end
