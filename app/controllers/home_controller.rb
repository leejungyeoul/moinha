class HomeController < ApplicationController
  def index
     @pictures=Post.all.reverse
    @model=Model.all
    # @pictures=Post.all.reverse
    if model_signed_in?
    @login="로그아웃"
    else
    @login="로그인"
    end
    # if users_signed_out?
    #     redirect_to "#"
    # end
    @postsports=Postsport7.all.reverse
    @postgame=Postgame7.all.reverse
    @postcircle=Postcircle7.all.reverse
    @posttheater=Posttheater7.all.reverse

    
    @one_sports=Postsport7.find(1)
    
    @one_circle=Postcircle7.find(1)
    @one_game=Postgame7.find(1)
    @one_reading=Postcircle7.find(1)
    @count=0
    @count2=0
    @count3=0
    @count4=0
    
  end
  def sports
       if model_signed_in?
          @login="로그아웃"
          else
          @login="로그인"
       end
    
    @pictures=Postsport7.all.reverse
    @count=0
    @count2=0
    @count3=0
    @count4=0
    @pcount=0
    @post=Spopeo.all
      @posts=Spoly1.all
      @apply_count=0
      @spopeo=Spopeo.all
     
  end
  def circle
       if model_signed_in?
          @login="로그아웃"
          else
          @login="로그인"
       end
    
    @pictures=Postcircle7.all.reverse
    @count=0
    @count2=0
    @count3=0
    @count4=0
    @pcount=0
    @post=Cirpeo.all
      @posts=Cirly1.all
      @apply_count=0
      @spopeo=Cirpeo.all
     
  end
  def game
       if model_signed_in?
          @login="로그아웃"
          else
          @login="로그인"
       end
    
    @pictures=Postgame7.all.reverse
    @count=0
    @count2=0
    @count3=0
    @count4=0
    @pcount=0
    @post=Gampeo.all
      @posts=Gamly1.all
      @apply_count=0
      @spopeo=Gampeo.all
     
  end
  def theater
       if model_signed_in?
          @login="로그아웃"
          else
          @login="로그인"
       end
    
    @pictures=Post.all.reverse
    @count=0
    @count2=0
    @count3=0
    @count4=0
    @pcount=0
    @post=Theapeo.all
      @posts=Thealy1.all
      @apply_count=0
      @spopeo=Theapeo.all
     
  end
  def sports_write_end
     @lat=0.0
     @lng=0.0
     @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          @people_num=params[:people_num]
          post=Postsport7.new
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
          post.people_num =@people_num
        #   post.user =@what_sports + ".jpg"
          post.what_sports=@what_sports + ".jpg"
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/sports"
          else
            render :text => "다시해"
          end 
  end
   def game_write_end
     @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          @people_num=params[:people_num]
          post=Postgame7.new
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
          post.people_num =@people_num
  
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/game"
          else
            render :text => "다시해"
          end 
  end
  def circle_write_end
     @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          @people_num=params[:people_num]
          post=Postcircle7.new
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
          post.people_num =@people_num

          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/circle"
          else
            render :text => "다시해"
          end 
  end
  # def theater_write_end
  #   @title=params[:title]
  #         @date=params[:date]
  #         @site=params[:site]
  #         @name=params[:name]
  #         @content=params[:content]
  #         @what_sports=params[:what_sports]
  #         @kakao=params[:kakao]
  #         @current=params[:current]
  #         @people_num=params[:people_num]
  #         post=Posttheater.new
  #         post.title =@title
  #         post.date =@date
  #         post.site =@site
  #         post.date =@date
  #         post.name =@name
  #         post.kakao =@kakao
  #         post.current =@current
  #         post.people_num =@people_num

  #         post.content =@content

  #         uploader = MachineUploader.new
  #         uploader.store!(params[:pic])
          
  #         post.image_url=uploader.url
  #         if post.save
  #           redirect_to "/theater"
  #         else
  #           render :text => "다시해"
  #         end 
  # end
  
  def theater_write_end
     @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
         
          post=Post.new
          post.title =@title
          post.date =@date
          post.site =@site
        
          post.name =@name
            post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/theater"
          else
            render :text => "다시해"
          end 
  end
  
  def write_end

          # @every_post=Post.all.order("id desc")
          @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @user=params[:user]
          @content=params[:content]

          post=Post.new
          post.title =@title
          post.date =@date
          post.site =@site
          post.user =@user
          post.content =@content
          
 
          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          post.image_url=uploader.url
         
           if post.save
             redirect_to "/theater"
           else
            # render :text => post.errors.messages[:title].first
            render :text => "다시해"
            end
        
  end
  
  
  
  def sports_apply
        unless model_signed_in?
          redirect_to "/models/sign_in"
        end
      @pictures=Postsport7.find(params[:post_id])

      @posts=Spoly1.all
      @apply_count=0
      @spopeo=Spopeo.all
      @appok=0

  end
    def theater_apply
        unless model_signed_in?
          redirect_to "/models/sign_in"
        end
      @pictures=Posttheater7.find(params[:post_id])

      @posts=Thealy1.all
      @apply_count=0
      @spopeo=Theapeo.all
      @appok=0

  end
    def game_apply
        unless model_signed_in?
          redirect_to "/models/sign_in"
        end
      @pictures=Postgame7.find(params[:post_id])

      @posts=Gamly1.all
      @apply_count=0
      @spopeo=Gampeo.all
      @appok=0

  end
    def circle_apply
        unless model_signed_in?
          redirect_to "/models/sign_in"
        end
      @pictures=Postcircle7.find(params[:post_id])

      @posts=Cirly1.all
      @apply_count=0
      @spopeo=Cirpeo.all
      @appok=0

  end
  
    def destroy_sports
        @pictures=Postsport7.find(params[:post_id])
        @pictures.destroy
        redirect_to "/sports"
    
  end
  def destroy_game
        @pictures=Postgame7.find(params[:post_id])
        @pictures.destroy
        redirect_to "/game"
    
  end
  def destroy_circle
        @pictures=Postcircle7.find(params[:post_id])
        @pictures.destroy
        redirect_to "/circle"
    
  end
  def destroy_theater
        @pictures=Posttheater7.find(params[:post_id])
        @pictures.destroy
        redirect_to "/theater"
    
  end
  
  def update_sports
      @pictures=Postsport7.find(params[:post_id])
  end
    def update_game 
      @pictures=Postgame7.find(params[:post_id])
  end
    def update_circle
      @pictures=Postcircle7.find(params[:post_id])
  end
    def update_theater
      @pictures=Posttheater7.find(params[:post_id])
  end
      
  def real_sports_update   
    
          @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          post=Postsport7.find(params[:post_id])
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
        #   post.user =@what_sports + ".jpg"
          post.what_sports=@what_sports + ".jpg"
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/sports"
          else
            render :text => "다시해"
          end 

  end  
  
   def real_game_update   
    
          @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          post=Postgame7.find(params[:post_id])
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
        #   post.user =@what_sports + ".jpg"
          post.what_sports=@what_sports + ".jpg"
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/game"
          else
            render :text => "다시해"
          end 

  end  
 
  def real_circle_update   
    
          @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          post=Postcircle7.find(params[:post_id])
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
        #   post.user =@what_sports + ".jpg"
          post.what_sports=@what_sports + ".jpg"
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/circle"
          else
            render :text => "다시해"
          end 

  end  
   def real_theater_update   
    
          @title=params[:title]
          @date=params[:date]
          @site=params[:site]
          @name=params[:name]
          @content=params[:content]
          @what_sports=params[:what_sports]
          @kakao=params[:kakao]
          @current=params[:current]
          post=Posttheater7.find(params[:post_id])
          post.title =@title
          post.date =@date
          post.site =@site
          post.date =@date
          post.name =@name
          post.kakao =@kakao
          post.current =@current
        #   post.user =@what_sports + ".jpg"
          post.what_sports=@what_sports + ".jpg"
          post.content =@content

          uploader = MachineUploader.new
          uploader.store!(params[:pic])
          
          post.image_url=uploader.url
          if post.save
             redirect_to "/theather"
          else
            render :text => "다시해"
          end 

  end  
 def sports_reply
            @posts=Spoly1.all
          post=Spoly1.new
          post.content=params[:content]
          post.num=params[:id_of_post]
          post.current=params[:current]
    
          post.save
          redirect_to "/sports"
      
  end
 
 def game_reply
            @posts=Gamly1.all
          post=Gamly1.new
          post.content=params[:content]
          post.num=params[:id_of_post]
          post.current=params[:current]
    
          post.save
          redirect_to "/game"
      
  end
 
 def circle_reply
          @posts=Cirly1.all
          post=Cirly1.new
          post.content=params[:content]
          post.num=params[:id_of_post]
          post.current=params[:current]
    
          post.save
          redirect_to "/circle"
      
  end
 
 def theater_reply
            @posts=thealy1.all
          post=thealy1.new
          post.content=params[:content]
          post.num=params[:id_of_post]
          post.current=params[:current]
    
          post.save
          redirect_to "/theater"
      
  end
 
 def sports_write
         unless model_signed_in?
         redirect_to "/models/sign_in"
         end
    @post=Postsport7.all.reverse
    end
    
     def game_write
         unless model_signed_in?
         redirect_to "/models/sign_in"
         end
    @post=Postgame7.all.reverse
    end
     def circle_write
         unless model_signed_in?
         redirect_to "/models/sign_in"
         end
    @post=Postcircle7.all.reverse
    end
    
     def theater_write
         unless model_signed_in?
         redirect_to "/models/sign_in"
         end
    @post=Posttheater7.all.reverse
    end
    
    def sports_people
          @apply_current=params[:apply_current]
          @apply_num=params[:apply_num]
          @apply_count=0
          # post=Sports_people.find(params[:post_id])
          
          post=Spopeo.new
          post.apply_current =@apply_current
          post.apply_num =@apply_num
          post.save
          redirect_to "/sports"
           
    end
     def game_people
          @apply_current=params[:apply_current]
          @apply_num=params[:apply_num]
          @apply_count=0
          # post=Sports_people.find(params[:post_id])
          
          post=Gampeo.new
          post.apply_current =@apply_current
          post.apply_num =@apply_num
          post.save
          redirect_to "/game"
           
    end
    
     def circle_people
          @apply_current=params[:apply_current]
          @apply_num=params[:apply_num]
          @apply_count=0
          # post=Sports_people.find(params[:post_id])
          
          post=Cirpeo.new
          post.apply_current =@apply_current
          post.apply_num =@apply_num
          post.save
          redirect_to "/circle"
           
    end
  
   def theater_people
          @apply_current=params[:apply_current]
          @apply_num=params[:apply_num]
          @apply_count=0
          # post=Sports_people.find(params[:post_id])
          
          post=Theapeo.new
          post.apply_current =@apply_current
          post.apply_num =@apply_num
          post.save
          redirect_to "/theater"
           
    end
  def destroy_sports_apply
        @pictures=Spopeo.find(params[:post_id])
        @pictures.destroy
        redirect_to "/sports"
  end
  def destroy_sports_re
       @pictures=Spoly1.find(params[:post_id])
       @pictures.destroy
       redirect_to "/sports"
  end
 
   def destroy_game_apply
        @pictures=Gampeo.find(params[:post_id])
        @pictures.destroy
        redirect_to "/game"
  end
  def destroy_sports_re
       @pictures=Gamly1.find(params[:post_id])
       @pictures.destroy
       redirect_to "/game"
  end
 
   def destroy_circle_apply
        @pictures=Cirpeo.find(params[:post_id])
        @pictures.destroy
        redirect_to "/circle"
  end
  def destroy_circle_re
       @pictures=Cirly1.find(params[:post_id])
       @pictures.destroy
       redirect_to "/circle"
  end
 
   def destroy_theater_apply
        @pictures=Theapeo.find(params[:post_id])
        @pictures.destroy
        redirect_to "/theater"
  end
  def destroy_theater_re
       @pictures=Thealy1.find(params[:post_id])
       @pictures.destroy
       redirect_to "/theater"
  end
  
  
  
  # def game
  #   @pictures=Postgame.all.reverse
  # end
  # def reading
  #   @pictures=Postreading.all.reverse
  # end
  # def circle
  #   @pictures=Postcircle.all.reverse
  # end
  # def theater
  #   @pictures=Post.all.reverse
  # end
  
  # def facility
  # end
  # def details
  # end

  # def test
  # end
  # def write
  # end
 
  

  
  # def reply_write
      
  #       @id_of_post=params[:post_id]
  #       reply=Sports_reply.new
  #       reply.content=params[:content]
  #       reply.post_id=@id_of_post
  #       reply.save
        
  #     redirect_to "/sports_apply/:post_id"
 
  # end
  def before_signup2
      @title=params[:title]
      @title2=params[:title2]
      if @title=="비룡프라자" and @title2=="하이데거의숲"
          # if model_signed_in?
          # render :text => "로그아웃 하세요"
          # else
          redirect_to "/models/sign_up"
          # end
    
      else
          redirect_to "/sing"
      end
  
  end
  

    
  
    def talk_write
        post=Talk2.new
        post.title=params[:title]
        post.name=params[:name]
        post.pass=params[:pass]
        post.content=params[:content]
        post.save
        
        redirect_to "/talk_list"
    end
    def talk_list
       @pictures=Talk2.all.reverse
       @count=0
    end
     def talk_list2
       @pictures=Talk2.all.reverse
       @count2=0
    end
    def talk_detail
        @pictures=Talk2.find(params[:post_id])
        @pass=params[:password]
    end
    def destroy_talk
        @pictures=Talk2.find(params[:post_id])
        @pictures.destroy
        redirect_to "/talk_list"
    end
      def update_talk
      @pictures=Talk2.find(params[:post_id])
  end
  
  def real_talk_update   
    
        post=Talk2.find(params[:post_id])
        post.title=params[:title]
        post.name=params[:name]
        post.pass=params[:pass]
        post.content=params[:content]
        post.save
        
        redirect_to "/talk_list"
         
  end  
end
