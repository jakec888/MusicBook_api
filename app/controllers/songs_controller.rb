
class SongsController < ApplicationController

  def index
    render json: Song.all
  end

  def show
    render json: Song.find(params["id"])
  end

  def create
    render json: Song.create(params["song"])
  end

  def delete
    render json: Song.delete(params["id"])
  end

  def update
    render json: Song.update(params["id"], params["song"])
  end
end
