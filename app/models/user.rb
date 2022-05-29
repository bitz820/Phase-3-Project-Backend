
class User < ActiveRecord::Base
  has_many :likes
  has_many :likes_as_liked, class_name: 'Like', foreign_key: :liked_user_id
  has_many  :liked_users, through: :likes,  source: :liked_user
  has_many :admirers, through: :likes_as_liked, source: :user

  # has_many  :liked_users, through: :likes,  source: :user
  # has_many :matches, through: :likes


      def match
        # get all ids of people i liked
        like_you = self.likes.map {|like| like.liked_user_id}
        # get all ids of people who liked me
        like_me = self.likes_as_liked.map {|like| like.user_id}
        # compare the two arrays and return every instance in which they match.
        match_ids = like_you & like_me
        # find the all user match instances by the id
        matches = match_ids.map{|num| User.find(num)}
      end

      # this happnes when i click the like button
      def has_liked (other_person_id)
        # binding.pry
        liked_me_exists = Like.where(user_id: other_person_id , liked_user_id: self.id).first
        if Like.where(user_id: self.id, liked_user_id: other_person_id).exists?
          nil
        elsif
          create_like_instance = Like.create(user_id: self.id, liked_user_id: other_person_id)
        end

        
      end
  end    
      # if liked_me_exists #create a match
      #   create_match = Like.create(user_id:self.id, liked_user_id: other_person_id )
      # elsif
      #   # create a like 
      #   create_like_instance
      # end
      # Like.find_by(like => like.user_id == self.id && like.liked_user_id == other_person_id)
      # if User.likes.find(other_person_id)
      #   Match.create(likes_id_1: self.id, likes_id_2: other_person_id)
      # elsif 
      #   # if other_person_id doesnt already exist in the array, push it into array
      #   Like.create()
      # end
