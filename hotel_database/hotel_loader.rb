require "csv"

class HotelLoader
  def initialize(filename_of_hotel_csv="hotels.csv")
    @hotels = {}
    CSV.foreach(filename_of_hotel_csv, headers: true) do |hotel|
      @hotels[hotel["Hotel"].strip] = hotel
    end
  end

  def print_hotels
    @hotels.keys.each do |hotel_name|
      puts hotel_name
    end
  end
end

hotel_loader = HotelLoader.new
hotel_loader.print_hotels
