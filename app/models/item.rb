class Item < ActiveRecord::Base
  scope :year, -> { where("created_at > ?", Time.new.beginning_of_year) }
  scope :month, -> { where("created_at > ?", Time.new.beginning_of_month) }
  scope :day, -> { where("created_at > ?", Time.new.beginning_of_day) }

  belongs_to :category

  validates_presence_of :category
  validates :money, numericality: true, presence: true

  attr_accessor :detail
end
