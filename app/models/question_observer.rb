class QuestionObserver < ActiveRecord::Observer
  def after_save(question)
    # Deliver email notification
    Notification.deliver_question_created question
  end
end
