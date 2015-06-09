class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :place 

  validates_presence_of :score
  validates_presence_of :content 

  after_save :calculate_avarage

  def calculate_avarage
    a = self.place.avarage_rating 
    self.place.update_attributes(total_avarage: a)
  end

end
