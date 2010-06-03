class Notifier < ActionMailer::Base
  def posted_question(question)
    recipients "qna@crowdint.com"
    subject "Postearon una pregunta nueva en qna.crowdint.com"
    from "qna@crowdint.com"
  end

end
