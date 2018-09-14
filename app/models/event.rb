class Event < ApplicationRecord
  belongs_to :event_category
  has_many :clips
  has_many :users, through: :clips
  has_many :purchases
  
  def self.search(search)
    if search
      Event.where(['location LIKE ?', "%#{search}%"])
    else
      Event.all
    end
  end
  def self.search_name(search)
    if search
      Event.where(['title LIKE ?', "%#{search}%"])
    else
      Event.all
    end
  end
  
  validates :event_category, :title, :location, :start_at, :ticket_price, :ticket_quantity, presence: true
  validates :title, length: { maximum: 80 }, uniqueness: true
  validates :location, length: { maximum: 20 }
  validates :ticket_price, :ticket_quantity, numericality: { only_integer: true, greater_than: 0 }
    
  validates_each :start_at do |record, attr, value|
    record.errors.add(attr, 'must be at least a week from now') if value < Time.current + 1.week
  end
end
