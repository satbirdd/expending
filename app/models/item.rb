class Item < ActiveRecord::Base
  scope :of_this_year, -> { where("created_at > ?", Time.now.beginning_of_year) }
  scope :of_this_month, -> { where("created_at > ?", Time.now.beginning_of_month) }
  scope :of_day, -> { where("created_at > ?", Time.now.beginning_of_day) }

  belongs_to :category

  validates_presence_of :category
  validates :money, numericality: true, presence: true

  attr_accessor :detail

  class << self
    def of_day(time)
      where('created_at BETWEEN ? AND ?', time.beginning_of_day, time.end_of_day)
    end

    def of_month(time)
      where('created_at BETWEEN ? AND ?', time.beginning_of_month, time.end_of_month)
    end
  end
end
