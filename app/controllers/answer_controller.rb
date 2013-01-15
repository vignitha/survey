class AnswerController < ApplicationController
    def create
      @answer = Answer.new(params[:answer])
      @current_user = User.find(session[:current_user_id])
      @answer.user_id = @current_user.id 
      @answer.save()
      redirect_to msg_path
    end

    def takesurvey
      @survey = Survay.find(params[:id])
      @question = Question.find(:all, :conditions => {:survay_id => params[:id]})
      @questions = @survey.questions
    end
    
    
end
