class QuestionsController < ApplicationController
  resource_controller

  create.flash I18n.t('questions.create.flash')
end
