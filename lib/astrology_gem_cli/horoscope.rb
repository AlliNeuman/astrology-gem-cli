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
    binding.pry
    headline = doc.search("div.teaser h4.title").text.gsub("\n", "")
    name = doc.search("h2.sign")[0].text

  end




end
