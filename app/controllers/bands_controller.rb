class BandsController < ApplicationController
  def index
    render json: Band.all, status: 200
  end

  def show
    # TODO - we need to take our slug "param" and pass it to the Band.find_by_slug method
    # if we get a band, render it as json like this:
    # render json: @band, status: 200
    # if we can't find the band, render a json response with a useful error message and 
    # a "status" of 404

    # Hint: It's always great to start with binding.pry and then try out some code in the console!
  end

  def create
    # TODO - we need to take params[:name], params[:genre] and params[:slug]
    # and pass them to the Band.create method
    # (read the band.rb and band_spec.rb for more details)

    # then render the new band as json with:
    # render json: @band, status: 201
  end

  def update_genre
    # TODO - pattern-match from the #create action above,
    # but with the Band.update_genre_by_slug method
  end
end
