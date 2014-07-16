require "csv"

class HotelLoader
  def initialize(filename_of_hotel_csv="hotels.csv")
    @hotels = {}
    load_hotels(filename_of_hotel_csv)
  end

  def print_hotels
    @hotels.keys.each do |hotel_name|
      puts hotel_name
    end
  end

  private

  def load_hotels(filename_of_hotel_csv)
    CSV.foreach(filename_of_hotel_csv, headers: true) do |row|
      hotel_name = row["Hotel"].strip
      @hotels[hotel_name] = row
    end
  end
end

hotel_loader = HotelLoader.new
hotel_loader.print_hotels
