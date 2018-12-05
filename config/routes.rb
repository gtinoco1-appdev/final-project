Rails.application.routes.draw do
  # Routes for the Family resource:

  # CREATE
  get("/families/new", {:controller => "families", :action => "new_form"})
  post("/create_family", {:controller => "families", :action => "create_row"})

  # READ
  get("/families", {:controller => "families", :action => "index"})
  get("/families/:id_to_display", {:controller => "families", :action => "show"})

  # UPDATE
  get("/families/:prefill_with_id/edit", {:controller => "families", :action => "edit_form"})
  post("/update_family/:id_to_modify", {:controller => "families", :action => "update_row"})

  # DELETE
  get("/delete_family/:id_to_remove", {:controller => "families", :action => "destroy_row"})

  #------------------------------

  # Routes for the Follow request resource:

  # CREATE
  get("/follow_requests/new", {:controller => "follow_requests", :action => "new_form"})
  post("/create_follow_request", {:controller => "follow_requests", :action => "create_row"})

  # READ
  get("/follow_requests", {:controller => "follow_requests", :action => "index"})
  get("/follow_requests/:id_to_display", {:controller => "follow_requests", :action => "show"})

  # UPDATE
  get("/follow_requests/:prefill_with_id/edit", {:controller => "follow_requests", :action => "edit_form"})
  post("/update_follow_request/:id_to_modify", {:controller => "follow_requests", :action => "update_row"})

  # DELETE
  get("/delete_follow_request/:id_to_remove", {:controller => "follow_requests", :action => "destroy_row"})

  #------------------------------

  # Routes for the Coral comment resource:

  # CREATE
  get("/coral_comments/new", {:controller => "coral_comments", :action => "new_form"})
  post("/create_coral_comment", {:controller => "coral_comments", :action => "create_row"})

  # READ
  get("/coral_comments", {:controller => "coral_comments", :action => "index"})
  get("/coral_comments/:id_to_display", {:controller => "coral_comments", :action => "show"})

  # UPDATE
  get("/coral_comments/:prefill_with_id/edit", {:controller => "coral_comments", :action => "edit_form"})
  post("/update_coral_comment/:id_to_modify", {:controller => "coral_comments", :action => "update_row"})

  # DELETE
  get("/delete_coral_comment/:id_to_remove", {:controller => "coral_comments", :action => "destroy_row"})

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  get("/likes/new", {:controller => "likes", :action => "new_form"})
  post("/create_like", {:controller => "likes", :action => "create_row"})

  # READ
  get("/likes", {:controller => "likes", :action => "index"})
  get("/likes/:id_to_display", {:controller => "likes", :action => "show"})

  # UPDATE
  get("/likes/:prefill_with_id/edit", {:controller => "likes", :action => "edit_form"})
  post("/update_like/:id_to_modify", {:controller => "likes", :action => "update_row"})

  # DELETE
  get("/delete_like/:id_to_remove", {:controller => "likes", :action => "destroy_row"})

  #------------------------------

  # Routes for the Coral resource:

  root "corals#index"

  # CREATE
  get("/corals/new", {:controller => "corals", :action => "new_form"})
  post("/create_coral", {:controller => "corals", :action => "create_row"})

  # READ
  get("/corals", {:controller => "corals", :action => "index"})
  get("/corals/:id_to_display", {:controller => "corals", :action => "show"})

  get("/my_likes", {:controller => "corals", :action => "liked_corals"})

  # UPDATE
  get("/corals/:prefill_with_id/edit", {:controller => "corals", :action => "edit_form"})
  post("/update_coral/:id_to_modify", {:controller => "corals", :action => "update_row"})

  # DELETE
  get("/delete_coral/:id_to_remove", {:controller => "corals", :action => "destroy_row"})

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/users", {:controller => "users", :action => "index"})
  get("/users/:id_to_display", {:controller => "users", :action => "show"})

  get("/my_page", {:controller => "users", :action => "store"})
end
