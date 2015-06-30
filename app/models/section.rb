class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :chapter

  validates_presence_of :name
end
