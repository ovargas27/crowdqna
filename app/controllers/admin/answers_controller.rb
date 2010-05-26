class Admin::AnswersController < Admin::BaseController
  resource_controller :singleton

  belongs_to :question

  destroy.wants.html { redirect_to :admin_questions }
  create.flash I18n.t('admin.answers.create.flash')
  destroy.flash I18n.t('admin.answers.destroy.flash')
end