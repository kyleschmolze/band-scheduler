class BandsController < ApplicationController
  def index
    render json: Band.all, status: 200
  end

  def show
    @band = Band.find_by_param(params[:name])
    if @band.present?
      render json: @band, status: 200
    else
      render json: { error: 'Not found' }, status: 404
    end
  end

  def create
    @band = Band.create({ name: params[:name], genre: params[:genre] })
    render json: @band, status: 201
  end
end
