Rails.application.routes.draw do
  devise_for :models
#   devise_for :users
  get 'home/index'
  get '/sports'=>"home#sports"
  get '/theater'=>"home#theater"
  get '/game'=>"home#game"
  get '/reading'=>"home#reading"
  get '/facility'=>"home#facility"
  
  get '/sing'=>"home#sing"
  get '/detail'=>"home#detail"
  get '/circle'=>"home#circle"
  get '/reading'=>"home#reading"  
  get '/write'=>"home#write"
  get '/bigsoccer'=>"home#bigsoccer"
  get '/ingongsoccer'=>"home#ingongsoccer"
  get '/footsall'=>"home#footsall"
  get '/sports_write'=>"home#sports_write"
  get '/game_write'=>"home#game_write"
  get '/game_theater'=>"home#game_theater"
  
  get '/theater_write'=>"home#theater_write"
  get '/reading_write'=>"home#reading_write"
  get '/circle_write'=>"home#circle_write"
  get '/insideOfUniv'=>"home#insideOfUniv"
  get '/basketball'=>"home#basketball"
  get '/inhatennis'=>"home#inhatennis"
  get '/tennis'=>"home#tennis"
  get '/inhapingpong'=>"home#inhapingpong"
  get '/pingpong'=>"home#pingpong"
  get '/soccer'=>"home#soccer"
  get '/jokgu'=>"home#jokgu"
  get '/iron'=>"home#iron"
  get '/base'=>"home#base"
  get 'yeongyung'=>"home#yeongyung"
  get '/yeon_way'=>"home#yeon_way"
  get '/yeon_info'=>"home#yeon_info"
  
  get '/baseballimage'=>"home#baseballimage"
  get '/ironimage'=>"home#ironimage"
  get '/yeon_photo'=>"home#yeon_photo"
  get '/talk'=>"home#talk"
  get '/tennisimage'=>"home#tennisimage"
  get '/dowon'=>"home#dowon"
  get '/dowon_way'=>"home#dowon_way"
  get '/dowon_info'=>"home#dowon_info"
  get '/dowon_photo'=>"home#dowon_photo"
  get '/park'=>"home#park"
  get '/pingpongimage'=>"home#pingpongimage"
  get '/soccerimage'=>"home#soccerimage"
  get '/footsalimage'=>"home#footsalimage"
  get '/park_way'=>"home#park_way"
  get '/ingongbase'=>"home#ingongbase"
  get '/basketballimage'=>"home#basketballimage"
  get '/park_info'=>"home#park_info"
  get '/park_photo'=>"home#park_photo"
  get '/bowl'=>"home#bowl"
  get '/dowo  n_info'=>"home#dowon_info"
  get '/bigbasket'=>"home#bigbasket"
  get '/ingongbasket'=>"home#ingongbasket"
  get '/jokguimage'=>"home#jokguimage"
  get '/bowl_way'=>"home#bowl_way"
  get '/bowl_info'=>"home#bowl_info"
  get '/bowl_photo'=>"home#bowl_photo"
  get '/ingongfootsal'=>"home#ingongfootsal"
  get '/rokfootsal'=>"home#rokfootsal"
  get '/bigfootsal'=>"home#bigfootsal"
    get '/bigiron'=>"home#bigiron"
    get '/bigjokgu'=>"home#bigjokgu"   
  
  get 'destroy_sports/:post_id'=> "home#destroy_sports"
  get 'destroy_game/:post_id'=> "home#destroy_game"
  get 'destroy_reading/:post_id'=> "home#destroy_reading"
  get 'destroy_circle/:post_id'=> "home#destroy_circle"
  get 'destroy_theater/:post_id'=> "home#destroy_theater"      
  get '/destroy_talk/:post_id'=> "home#destroy_talk"
  get '/update_talk/:post_id'=> "home#update_talk"
  
  
  post '/write_end'=>"home#write_end"
  get 'destroy_sports_apply/:post_id'=> "home#destroy_sports_apply"      
  get 'destroy_sports_re/:post_id'=> "home#destroy_sports_re"
  get 'destroy_game_apply/:post_id'=> "home#destroy_game_apply"      
  get 'destroy_game_re/:post_id'=> "home#destroy_game_re"
    get 'destroy_circle_apply/:post_id'=> "home#destroy_circle_apply"      
  get 'destroy_circle_re/:post_id'=> "home#destroy_circle_re"
    get 'destroy_theater_apply/:post_id'=> "home#theater_sports_apply"      
  get 'destroy_theater_re/:post_id'=> "home#theater_sports_re"
  
  
  get 'update_sports/:post_id' => "home#update_sports"
  get 'update_game/:post_id' => "home#update_game"
  get 'update_reading/:post_id' => "home#update_reading"
  get 'update_circle/:post_id' => "home#update_circle"
  get 'update_theater/:post_id' => "home#update_theater"
 
  post 'real_sports_update/:post_id'=>"home#real_sports_update"
  post 'real_game_update/:post_id'=>"home#real_game_update"
    post 'real_reading_update/:post_id'=>"home#real_reading_update"
      post 'real_circle_update/:post_id'=>"home#real_circle_update"
        post 'real_theater_update/:post_id'=>"home#real_theater_update"
  
  post 'real_talk_update/:post_id'=> "home#real_talk_update"    
  post '/sports_people'=>"home#sports_people"      
  post '/game_people'=>"home#game_people"      
  post '/circle_people'=>"home#circle_people"      
  post '/theater_people'=>"home#theater_people"    
        
        
 post '/theater_write_end'=>"home#/theater_write_end"
 post '/sports_write_end'=>"home#sports_write_end"
 post '/game_write_end'=>"home#game_write_end"
 post '/reading_write_end'=>"home#reading_write_end"
 post '/circle_write_end'=>"home#circle_write_end"
 
 
 get '/sports_apply'=> "home#sports_apply"
 get '/sports_apply/:post_id'=> "home#sports_apply"
 post '/sports_apply/:post_id'=> "home#sports_apply"
   get '/game_apply'=> "home#game_apply"
   get '/game_apply/:post_id'=> "home#game_apply"
   post '/game_apply/:post_id'=> "home#game_apply"
 get '/circle_apply'=> "home#circle_apply"
 get '/circle_apply/:post_id'=> "home#circle_apply"
 post '/circle_apply/:post_id'=> "home#circle_apply"
   get '/theater_apply'=> "home#theater_apply"
   get '/theater_apply/:post_id'=> "home#theater_apply"
   post '/theater_apply/:post_id'=> "home#theater_apply"
 
 
 
 post '/reply_write/:post_id'=>"home#reply_write"
 
 
 post '/before_signup'=>"home#before_signup"
 get '/before_signup'=>"home#before_signup"
 post '/before_signup2'=>"home#before_signup2"

 post '/sports_reply'=>"home#sports_reply"
 post '/game_reply'=>"home#game_reply"
 post '/circle_reply'=>"home#circle_reply"
 post '/theater_reply'=>"home#theater_reply"
 
 
 post '/test5/:post_id'=>"home#test5"
 
  get '/talk'=>"home#talk" 
  post '/talk_write'=>"home#talk_write"
  get '/talk_list'=>"home#talk_list"
  get '/talk_list2'=>"home#talk_list2"
  get '/talk_detail/:post_id'=>"home#talk_detail" 
  post '/talk_detail/:post_id'=>"home#talk_detail"
  # post '/talk_detail'
        
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'


get '/test5'=>"home#test5"
post '/test5'=>"home#test5"
get '/test1'=>"home#test1"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
