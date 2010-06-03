class QuestionsController < ApplicationController
  resource_controller

  create.after { Notifier.deliver_posted_question(object)}

  create.flash I18n.t('questions.create.flash')
end
