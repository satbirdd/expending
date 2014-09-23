class Category < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :spends, class_name: 'Item'

  before_save :generate_pinyin

  has_ancestry

  class << self
    def find_by_pinyin(name)
      return all if name.blank?

      pinyin = PinYin.of_string(name).join
      where("pinyin LIKE ?", "%#{pinyin}%")
    end
  end

  protected
    def generate_pinyin
      if new_record? || name_changed?
        self.pinyin = "#{PinYin.of_string(name).join}_#{PinYin.abbr(name)}"
      end
    end
end
