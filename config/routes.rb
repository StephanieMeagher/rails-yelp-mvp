Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end


# Prefix Verb URI Pattern                                                                              Controller#Action
#        restaurant_reviews POST /restaurants/:restaurant_id/reviews(.:format)                                            reviews#create
#     new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format)                                        reviews#new
#               restaurants GET  /restaurants(.:format)                                                                   restaurants#index
#                           POST /restaurants(.:format)                                                                   restaurants#create
#            new_restaurant GET  /restaurants/new(.:format)                                                               restaurants#new
#                restaurant GET  /restaurants/:id(.:format)                                                               restaurants#show
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
