class Admin::AnswersController < Admin::BaseController
  resource_controller :singleton

  belongs_to :question

  destroy.wants.html { redirect_to :admin_questions }
end