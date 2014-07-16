require "csv"

class HotelLoader
  def initialize
      CSV.foreach("hotels.csv", headers: true) do |hotel|
        puts hotel["Hotel"].lstrip.chomp
      end
  end
end

HotelLoader.new
