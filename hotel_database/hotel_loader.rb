require "csv"

class HotelDatabase
  def initialize(filename_of_hotel_csv="hotels.csv")
    @hotels = {}
    load_csv(filename_of_hotel_csv)
  end

  def print_hotel_names
    @hotels.keys.each do |hotel_name|
      puts hotel_name
    end
  end

  private

  def load_csv(filename_of_hotel_csv)
    CSV.foreach(filename_of_hotel_csv, headers: true) do |row|
      hotel_name = row["Hotel"].strip
      @hotels[hotel_name] = row
    end
  end
end

hotels = HotelDatabase.new
hotels.print_hotel_names
