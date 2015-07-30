class PhotosController < ApplicationController

#CREATE
  def new_form
  end

  def create_row
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos")
  end


# READ
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params["id"])
  end


# UPDATE
  def edit_form
    @photo = Photo.find(params["id"])
  end

  def update_row
    p = Photo.find(params["id"])
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos/" + params["id"].to_s)
  end


# DELETE
  def destroy
    p = Photo.find(params["id"])
    p.destroy

    redirect_to("/photos")
  end


end
