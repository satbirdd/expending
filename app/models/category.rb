class Category < ActiveRecord::Base

  has_many :spends, class_name: 'Item'

  before_save :generate_pinyin

  has_ancestry

  validates :name, uniqueness: true, presence: true

  scope :find_by_pinyin, -> (name) {
    if name.present?
      pinyin = PinYin.of_string(name).join
      where("pinyin LIKE ?", "%#{pinyin}%")
    end
  }

  protected
    def generate_pinyin
      if new_record? || name_changed?
        self.pinyin = "#{PinYin.of_string(name).join}_#{PinYin.abbr(name)}"
      end
    end
end
