require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Pedro")
guest2 = Guest.new("Richard")
guest3 = Guest.new("Louise")
guest4 = Guest.new("Omar")
listing1 = Listing.new("London")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Orlando")

trip1 = Trip.new(guest1,listing1)
trip2 = Trip.new(guest2,listing2)
trip3 = Trip.new(guest3,listing3)
trip4 = Trip.new(guest4,listing3)
trip5 = Trip.new(guest1,listing3)

Pry.start
