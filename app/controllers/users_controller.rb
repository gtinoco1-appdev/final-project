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

    render("user_templates/my_page.html.erb")
  end

end
