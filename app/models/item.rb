class Item < ActiveRecord::Base

  belongs_to :category

  validates_presence_of :category
  validates :money, numericality: true, presence: true

  attr_accessor :detail

  class << self
    def of_day(date = Date.current)
      date = Date.current if date.blank?
      where('date = ?', date.to_date)
    end

    def of_month(time = Time.now)
      time = Time.now if time.blank?
      where('date BETWEEN ? AND ?', time.beginning_of_month, time.end_of_month)
    end

    def of_year(time = Time.now)
      time = Time.now if time.blank?
      where('date BETWEEN ? AND ?', time.beginning_of_year, time.end_of_year)
    end
  end
end
