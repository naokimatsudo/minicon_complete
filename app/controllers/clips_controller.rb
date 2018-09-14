class ClipsController < ApplicationController
  def create


    @user_id = current_user.id
    @event_id = Event.find(params[:id]).id
    @clip = Clip.new(event_id: @event_id, user_id: @user_id)


      if @clip.save
        redirect_to root_path
      end

  end

  def destroy
    @clip = Clip.find(params[:id])
    if @clip.destroy
      redirect_to user_path(current_user)
    end
  end
  
  def index
    @clips = Clip.where(user_id: current_user.id)
    @my_favorite = Array.new
    a = 0
    @clips.each do |clip|
      my_favorite = Event.find_by(id: clip.event_id)
      @my_favorite[a] = my_favorite.title
      a += 1
    end
  end

end
