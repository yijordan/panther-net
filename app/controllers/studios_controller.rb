class StudiosController < ApplicationController
  def index
    matching_studios = Studio.all

    @list_of_studios = matching_studios.order({ :created_at => :desc })

    render({ :template => "studios/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_studios = Studio.where({ :id => the_id })

    @the_studio = matching_studios.at(0)

    render({ :template => "studios/show" })
  end

  def create
    the_studio = Studio.new
    the_studio.name = params.fetch("query_name")
    the_studio.city_id = params.fetch("query_city_id")
    the_studio.walk_in = params.fetch("query_walk_in")
    the_studio.shop_minimum = params.fetch("query_shop_minimum")
    the_studio.artists_count = params.fetch("query_artists_count")
    the_studio.address = params.fetch("query_address")
    the_studio.phone = params.fetch("query_phone")

    if the_studio.valid?
      the_studio.save
      redirect_to("/studios", { :notice => "Studio created successfully." })
    else
      redirect_to("/studios", { :alert => the_studio.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_studio = Studio.where({ :id => the_id }).at(0)

    the_studio.name = params.fetch("query_name")
    the_studio.city_id = params.fetch("query_city_id")
    the_studio.walk_in = params.fetch("query_walk_in")
    the_studio.shop_minimum = params.fetch("query_shop_minimum")
    the_studio.artists_count = params.fetch("query_artists_count")
    the_studio.address = params.fetch("query_address")
    the_studio.phone = params.fetch("query_phone")

    if the_studio.valid?
      the_studio.save
      redirect_to("/studios/#{the_studio.id}", { :notice => "Studio updated successfully."} )
    else
      redirect_to("/studios/#{the_studio.id}", { :alert => the_studio.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_studio = Studio.where({ :id => the_id }).at(0)

    the_studio.destroy

    redirect_to("/studios", { :notice => "Studio deleted successfully."} )
  end
end
