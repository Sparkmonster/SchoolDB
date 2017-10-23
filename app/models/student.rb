class Student < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  has_many :enrollments
  has_many :sections, through: :enrollments

  # Validations below
  validates :name, presence: true, length: { minimum: 1, maximum: 50, too_long:
     "%{count} characters is the maximum allowed.",
     too_short: "%{count} characters is not long enough." }
  validates :hobby, presence: true, length: { minimum: 5, maximum: 72,
    too_long: "%{count} characters is the maximum allowed for a hobby.",
    too_short: "%{count} characters is not long enough for a hobby." }
  validates :major, presence: true, length: { minimum: 3, maximum: 51,
      too_long: "%{count} characters is the maximum allowed for a fantasy major.",
      too_short: "%{count} characters is not long enough for a fantasy major." }
  validates :age, presence: true, numericality:
  { only_integer: true, greater_than_or_equal_to: 15 }
end
