class CoralCommentsController < ApplicationController
  def index
    @coral_comments = CoralComment.all

    render("coral_comment_templates/index.html.erb")
  end

  def show
    @coral_comment = CoralComment.find(params.fetch("id_to_display"))

    render("coral_comment_templates/show.html.erb")
  end

  def new_form
    @coral_comment = CoralComment.new

    render("coral_comment_templates/new_form.html.erb")
  end

  def create_row
    @coral_comment = CoralComment.new

    @coral_comment.coral_id = params.fetch("coral_id")
    @coral_comment.commenter_id = params.fetch("commenter_id")

    if @coral_comment.valid?
      @coral_comment.save

      redirect_back(:fallback_location => "/coral_comments", :notice => "Coral comment created successfully.")
    else
      render("coral_comment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @coral_comment = CoralComment.find(params.fetch("prefill_with_id"))

    render("coral_comment_templates/edit_form.html.erb")
  end

  def update_row
    @coral_comment = CoralComment.find(params.fetch("id_to_modify"))

    @coral_comment.coral_id = params.fetch("coral_id")
    @coral_comment.commenter_id = params.fetch("commenter_id")

    if @coral_comment.valid?
      @coral_comment.save

      redirect_to("/coral_comments/#{@coral_comment.id}", :notice => "Coral comment updated successfully.")
    else
      render("coral_comment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @coral_comment = CoralComment.find(params.fetch("id_to_remove"))

    @coral_comment.destroy

    redirect_to("/coral_comments", :notice => "Coral comment deleted successfully.")
  end
end
