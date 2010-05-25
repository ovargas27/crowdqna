class Answer < ActiveRecord::Base
  # Relations
  belongs_to :question

  # State Machine
  state_machine :state, :initial => :asked do
    state :asked
    state :answered

    event :answer do
      transition :ask => :answered
    end
  end
end
