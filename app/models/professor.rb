class Professor < ApplicationRecord
  has_many :sections
  has_many :students
  has_many :courses, through: :sections
  has_many :courses, through: :students
  validates :name, presence: true, length: { minimum: 1, maximum: 50, too_long:
     "%{count} characters is the maximum allowed", too_short:
     "%{count} characters is not long enough." }
  validates :department, presence: true, length: { minimum: 5, maximum: 45,
    too_long: "%{count} characters is the maximum allowed", too_short:
    "%{count} characters is not long enough." }
end
