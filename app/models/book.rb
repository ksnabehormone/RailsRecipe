class Book < ActiveRecord::Base
  validates :name, presence: true
  validates :finished_flg, presence: true, length: { maximum: 1 }
end
