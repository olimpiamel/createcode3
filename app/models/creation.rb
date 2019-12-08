class Creation < ApplicationRecord

  validates :totran, presence: true, length: {maximum: 200}
  validates :title, presence: true, length: {maximum: 30}
  validates :origin, presence: true
  validates :destination, presence: true
end
