class Category < ApplicationRecord
  has_many :events
  has_many :achievements
  # def self.uniq_list
  #   arr = []
  #   self.all.each do |category|
  #     arr << category.name
  #   end
  #   arr.uniq
  # end
end
