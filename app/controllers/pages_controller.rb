class PagesController < ApplicationController
  def home
    @aircrafts = Aircraft.geocoded #returns flats with coordinates
    @markers = @aircrafts.map do |aircraft|
      {
        lat: aircraft.latitude,
        lng: aircraft.longitude
      }
    end

  end
end
