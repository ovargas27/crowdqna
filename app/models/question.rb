class Question < ActiveRecord::Base
  validates_presence_of :body

  has_one :answer
end