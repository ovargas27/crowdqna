class Notification < ActionMailer::Base

   def question_created(question)
    subject    'Notifications#question_created'
    recipients 'omar.vargas@crowdint.com'
    from       'omar.vargas@crowdint.com'
    sent_on    Time.now
    body       :greeting => 'Hi, question received'
  end

end
