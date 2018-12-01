class FamiliesController < ApplicationController
  def index
    @families = Family.all

    render("family_templates/index.html.erb")
  end

  def show
    @family = Family.find(params.fetch("id_to_display"))
    @corals = Coral.all
    # @q = Coral.ransack(params[:q])
    # @corals = @q.result(:distinct => true).includes(:family)

    render("family_templates/show.html.erb")
  end

  def new_form
    @family = Family.new

    render("family_templates/new_form.html.erb")
  end

  def create_row
    @family = Family.new
    @family.photo = params.fetch("photo")
    @family.title = params.fetch("title")

    if @family.valid?
      @family.save

      redirect_back(:fallback_location => "/families", :notice => "Family created successfully.")
    else
      render("family_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @family = Family.find(params.fetch("prefill_with_id"))

    render("family_templates/edit_form.html.erb")
  end

  def update_row
    @family = Family.find(params.fetch("id_to_modify"))

    @family.title = params.fetch("title")
    @family.photo = params.fetch("photo")

    if @family.valid?
      @family.save

      redirect_to("/families/#{@family.id}", :notice => "Family updated successfully.")
    else
      render("family_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @family = Family.find(params.fetch("id_to_remove"))

    @family.destroy

    redirect_to("/families", :notice => "Family deleted successfully.")
  end
end
