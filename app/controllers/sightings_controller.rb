class SightingsController < ApplicationController
#   def show
#     @sighting = Sighting.find(params[:id])
#     render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
#   end
# end

# def show
#   @sighting = Sighting.find(params[:id])
#   render json: SightingSerializer.new(@sightings, {include: [:bird, :location]}).serializable_hash
# end

def show
  @sighting = Sighting.find(params[:id])
  options = {}
  options[:include] = [:bird, :location]
  render json: SightingSerializer.new(@sightings, options).serializable_hash
end