class Category < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :spends, class_name: 'Item'

  before_save :generate_pinyin

  protected
    def generate_pinyin
      if new_record? || name_changed?
        self.pinyin = "#{PinYin.of_string(name).join}_#{PinYin.abbr(name)}"
      end
    end
end
