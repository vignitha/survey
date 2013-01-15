class QuestionController < ApplicationController
  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to qusindex_path(:id => @question.survay_id)
  end
 
  def index 
    @questions = Question.find(:all, :conditions => {:survay_id => params[:id]}	)
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
   def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      flash[:notice] = 'Question was successfully updated.'
      redirect_to action: :show, id: @question
    else
      render :action => 'edit'
   end
  end
  
   def show
    @question = Question.find(params[:id])
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to qusindex_path(:id => @question.survay_id)	
  end

end

