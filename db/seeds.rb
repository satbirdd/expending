# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' } { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel' city: cities.first)

roots = {
  饮食: %w(水果 早餐 中餐 晚餐 宵夜 零食饮料 材米油盐 买菜),
  交通: %w(火车 公交地铁的士打的),
  日常用品: %w(卫生用品 洗涤用品 手套雨具 水费 电费),
  住房住宿: %w(购房房贷 装修维修 家具 住宿 家用电器 日用五金),
  文化教育: %w(书籍笔墨 文具 学费学杂 培训),
  旅游娱乐: %w(旅游 电影 游戏 公园游乐),
  服饰衣着: %w(衣裤鞋袜 包包饰品 香水粉底),
  健康卫生: %w(医疗 保健),
  人情: [],
  其他: []
}

roots.each do |root_cate, child_cate|
  root = Category.roots.create(name: root_cate.to_s)
  child_cate.each { |name| root.children.create(name: name) }
end