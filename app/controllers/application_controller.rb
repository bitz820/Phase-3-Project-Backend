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
# am I patching the list of matches? this is an endpoint but not a table

  # Want to fetch all current matches based on match method for user
  # get "/users/:id/matches" do
  get "/users/1/matches" do
    # binding.pry
    # user = User.find(params[:id])
    user = User.find(1)
    matches = user.match
    # call match method , :match
    serialize(matches)
  end

  # This should be a response to the event listener of the button
  # post "/users/1/matches" do
  post "/likes" do
    #  binding.pry
    # user = User.find(params[:id])
    user = User.find(1)
    # NEED PARAMS OTHERUSER ID

    # find id of the profile which buton was clicked on and create new like
    user.has_liked(params[:liked_user_id]).to_json
  end

  # delete "/likes/:id" do
  delete "/likes/:liked_user_id" do
  

    # user = User.find(params[:liked_user_id])
    user = User.find(1)

    # find the id of the person which button was clicked on, and destroy the like instance
    delete_like = user.likes.find_by(liked_user_id: params[:liked_user_id])
    delete_like.destroy
    delete_like.to_json
  end

  # patch "/users/:id/likes" do
  #   user = User.find(params[:id])
  #   user.create_like
  # end
  
  get "/likes" do
    likes = Like.all
    serialize(likes)
  end

  private

  def serialize(objects)
    objects.to_json
  end

end
