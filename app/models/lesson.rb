class Lesson < ActiveRecord::Base
  belongs_to :sections

  validates_presence_of :name, :content
end
