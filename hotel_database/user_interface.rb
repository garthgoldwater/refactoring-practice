require "./hotel_loader"

class UserInterface
  def initialize(database)
    @database = database
    @query = ""
  end

  def query_loop
    while @query != "q"
      prompt_user_for_query
      display_results
    end
  end

  private

  def prompt_user_for_query
    print "Enter hotel name > "
    @query = gets.chomp.downcase
  end

  def display_results
    p @database[@query]
  end
end


hotels = HotelDatabase.new
hotels.print_hotel_names
UserInterface.new(hotels).query_loop
