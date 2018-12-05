class UsersController < ApplicationController
  def index
    @users = User.all

    render("user_templates/index.html.erb")
  end

  def show
    @users = User.find(params.fetch("id_to_display"))

    render("user_templates/show.html.erb")
  end

  def store
    @users = User.find(current_user.id)
    
    @corals = Coral.where(status: "Active", seller_id: current_user.id).order(:created_at => :desc)
    @coralsb = Coral.where(status: "Draft", seller_id: current_user.id).order(:created_at => :desc)
    @coralsc = Coral.where(status: "Sold", seller_id: current_user.id).order(:created_at => :desc)
    
    render("user_templates/my_page.html.erb")
  end

end
