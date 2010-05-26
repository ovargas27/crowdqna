class Admin::QuestionsController < Admin::BaseController
  resource_controller
  
  destroy.flash I18n.t('admin.questions.destroy.flash')
end
