class Item < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :category
  validates :money, numericality: true, presence: true

  attr_accessor :detail
end
