class Answer < ActiveRecord::Base
  # Relations
  belongs_to :question, :touch => true

  # Validations
  validates_presence_of :body
end
