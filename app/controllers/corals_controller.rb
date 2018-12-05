class CoralsController < ApplicationController
  def index
    # @corals = Coral.all
    # Use Ransack Gem
    @q = Coral.ransack(params[:q])
    @corals = @q.result(:distinct => true).includes(:family).where(status: "Active").order(:created_at => :desc)

    render("coral_templates/index.html.erb")
  end

  def show
    @coral = Coral.find(params.fetch("id_to_display"))

    render("coral_templates/show.html.erb")
  end

  def liked_corals
    @r = Coral.ransack(params[:r])
    # @corals = @r.result(:distinct => true).includes(:family).order(:created_at => :desc)
    @corals = current_user.liked_corals

    render("coral_templates/my_likes.html.erb")
  end

  def new_form
    @coral = Coral.new

    render("coral_templates/new_form1.html.erb")
  end

  def create_row
    @coral = Coral.new

    @coral.title = params.fetch("title")
    @coral.family_id = params.fetch("family_id")
    @coral.location_id = params.fetch("location_id")
    @coral.caption = params.fetch("caption")
    @coral.photo1 = params.fetch("photo1")
    @coral.photo2 = params.fetch("photo2", "")
    @coral.seller_id = params.fetch("seller_id")
    @coral.price = params.fetch("price")
    @coral.obo = params.fetch("obo")
    @coral.status = params.fetch("status")

    if @coral.valid?
      @coral.save

      redirect_back(:fallback_location => "/corals", :notice => "Coral created successfully.")
    else
      render("coral_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @coral = Coral.find(params.fetch("prefill_with_id"))

    render("coral_templates/edit_form.html.erb")
  end

  def update_row
    @coral = Coral.find(params.fetch("id_to_modify"))

    @coral.title = params.fetch("title")
    @coral.family_id = params.fetch("family_id")
    @coral.location_id = params.fetch("location_id")
    @coral.caption = params.fetch("caption")
    @coral.photo1 = params.fetch("photo1")
    @coral.photo2 = params.fetch("photo2", "")
    @coral.seller_id = params.fetch("seller_id")
    @coral.price = params.fetch("price")
    @coral.obo = params.fetch("obo")
    @coral.status = params.fetch("status")

  
    if @coral.valid?
      @coral.save

      redirect_to("/corals/#{@coral.id}", :notice => "Coral updated successfully.")
    else
      render("coral_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @coral = Coral.find(params.fetch("id_to_remove"))

    @coral.destroy

    redirect_to("/corals", :notice => "Coral deleted successfully.")
  end
end
