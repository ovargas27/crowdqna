class Question < ActiveRecord::Base
  # Relations
  validates_presence_of :body
  has_one :answer, :dependent => :destroy
end