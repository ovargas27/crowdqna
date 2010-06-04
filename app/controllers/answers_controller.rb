class AnswersController < ApplicationController
  resource_controller
  
  def collection
    Answer.find(:all, :order => "id DESC")
  end
end