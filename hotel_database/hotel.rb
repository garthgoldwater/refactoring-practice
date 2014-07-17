class Hotel
  def initialize(hotel_data)
    hotel_data.each do |key, value|
      @data[key] = value
    end
    @data["Name"] = @data["Hotel"]
  end

end
