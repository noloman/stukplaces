class Place < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :user_id

  belongs_to :user
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode

  def average_rating
    self.reviews.sum(:score)/reviews.size
    rescue ZeroDivisionError
    0
  end

  def self.search(search)
    if search
      where (['name LIKE ? or address LIKE ?', "#{search}", "#{search}"])
    else
      all
    end
  end

end
