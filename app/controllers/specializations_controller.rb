class SpecializationsController < ApplicationController
  def index
    matching_specializations = Specialization.all

    @list_of_specializations = matching_specializations.order({ :created_at => :desc })

    render({ :template => "specializations/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_specializations = Specialization.where({ :id => the_id })

    @the_specialization = matching_specializations.at(0)

    render({ :template => "specializations/show" })
  end

  def create
    the_specialization = Specialization.new
    the_specialization.artist_id = params.fetch("query_artist_id")
    the_specialization.style_id = params.fetch("query_style_id")

    if the_specialization.valid?
      the_specialization.save
      redirect_to("/specializations", { :notice => "Specialization created successfully." })
    else
      redirect_to("/specializations", { :alert => the_specialization.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_specialization = Specialization.where({ :id => the_id }).at(0)

    the_specialization.artist_id = params.fetch("query_artist_id")
    the_specialization.style_id = params.fetch("query_style_id")

    if the_specialization.valid?
      the_specialization.save
      redirect_to("/specializations/#{the_specialization.id}", { :notice => "Specialization updated successfully."} )
    else
      redirect_to("/specializations/#{the_specialization.id}", { :alert => the_specialization.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_specialization = Specialization.where({ :id => the_id }).at(0)

    the_specialization.destroy

    redirect_to("/specializations", { :notice => "Specialization deleted successfully."} )
  end
end
