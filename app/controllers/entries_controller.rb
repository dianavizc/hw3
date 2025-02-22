class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
  end
  
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["description"] = params["description"]
    puts params

    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]
    @entry.save
    
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
