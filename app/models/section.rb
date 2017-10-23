class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments
  validates :professor, :course, presence: true
  validates :sectionNum, presence: true, numericality: { only_integer: true, greater_than: 100 }
  validates :room, presence: true, length: { maximum: 15, too_long: "%{count} characters is the maximum allowed" }
end
