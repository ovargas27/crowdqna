class Admin::AnswersController < Admin::BaseController
  resource_controller :singleton

  belongs_to :question
end