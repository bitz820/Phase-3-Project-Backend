require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/users" do
    users = User.all
    serialize(users)
  end

  # When a like happens, we need to post/patch based on the like instance creation to the like table.  This should render on Matches (if aplicable)

  # Returns array of all users yet to be liked (excluding self)
  get "/users/:id" do
    user = User.find(params[:id])
    # This gets all people who I haven't liked yet
    # Like.where.not("user_id = ?", user.id)
    # People who have liked me
    # match_pool =  User.joins(:likes).where.not({ "likes.user_id" => user.id}).uniq
    
    # binding.pry
    # User.where(:liked_user_id != user.id && self.likes.user_id != user.id)
    not_me = User.all.filter{|item| 
      item.id != user.id
    }
    liked_users_id_arr = user.likes.pluck(:liked_user_id)

    liked_users_id_arr.each { |num|
    not_me.each { |u| 
    if u.id == num 
      not_me.delete(u)
    end
    }
    }
    data = {not_me: not_me, user:user}
    serialize(data)

  end

patch "/users/:id" do
  # binding.pry

  user = User.find(params[:id])
  user.update(profile_params)
  serialize(user)
end 


  # Want to fetch all current matches based on match method for user
  get "/users/:id/matches" do
    user = User.find(params[:id])
    # user = User.find(1)
    matches = user.match
    serialize(matches)
  end

  # This should be a response to the event listener of the button
  post "/likes" do
    # user = User.find(params[:id])
    user = User.find(params[:user_id])


    # find id of the profile which buton was clicked on and create new like
    user.has_liked(params[:liked_user_id]).to_json
  end

  delete "/likes/:liked_user_id" do
  binding.pry
    user = User.find(1)
    # How do I get the params for user_id
    # user = User.find(params[:user_id])

    # find the id of the person which button was clicked on, and destroy the like instance
    delete_like = user.likes.find_by(liked_user_id: params[:liked_user_id])
    delete_like.destroy
    delete_like.to_json
  end

  
  get "/likes" do
    likes = Like.all
    serialize(likes)
  end

  private

  def serialize(objects)
    objects.to_json
  end

  def profile_params
    allowed_params = %w(username password name bio gender interests)
    params.select {|param, value| allowed_params.include?(param)}
  end

  # def delete_params
  #   allowed_params = %w(user_id)
  #   params.select {|param, value| allowed_params.include?(param)}
  # end
    
end
