class AstrologyGemCli::Horoscope

  attr_accessor :name, :summary, :luckynumber, :financialoutlook, :compatibility

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
  end




end
