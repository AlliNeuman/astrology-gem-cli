# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application -> Created cli.rb that interacts with user input and outputs from the scraper and horoscope pages.
- [x] Pull data from an external source -> Scraper page pulls all the doc data from the Kansas City Star website using Nokogiri.
- [x] Implement both list and detail views -> When the program executes it displays a list of horoscopes 1-12 with the birthdate ranges for each. The user should select the number from the list that corresponds to the horoscope they want to see. Details will print out that show a hideline that says the current date for the horoscope, the horoscope sign, a summary of the days horoscope, lucky number, financial outlook and partner compatibility.
