class Item < ActiveRecord::Base
  belongs_to :user
  
  def time_left
    distance_of_time_in_words(Time.now, (created_at + 7.days))
  end
end
