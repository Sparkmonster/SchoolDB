class Course < ApplicationRecord
  has_many :sections
  has_many :students
  has_many :professors, through: :sections
  has_many :professors, through: :students
  validates :name, presence: true, length: { minimum: 1, maximum: 50, too_long:
     "%{count} characters is the maximum allowed for fantasy courses", too_short:
     "%{count} characters is not long enough for fantasy courses." }
  validates :number, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1000 }
  validates :semester, presence: true, length: { minimum: 4, maximum: 6, too_long:
     "%{count} characters is the maximum allowed for semester listing. Hint: Pick an Earth Season!", too_short:
     "%{count} characters is not long enough for semester listing. Hint: Pick an Earth Season!" }
  validates_inclusion_of :semester, :in => ["Fall", "Winter", "Spring", "Summer"], :allow_nil => true
  validates :date, presence: true  #might not be necessary to validate...
end
