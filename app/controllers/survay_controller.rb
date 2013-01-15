class SurvayController < ApplicationController
  def create
    @survey= Survay.new(params[:survay])
    if(@survey.save)
       flash[:notice] = "Survey created"
       redirect_to index_path
    else 
       redirect_to newsurvey_path
    end
   end
 
  def index
    @surveys = Survay.all
    #result = Answer.find(:all, :select => 'survay_id, count(distinct user_id) count',:group => 'survay_id')
    #@responses = Hash[result.group_by(&:survay_id).map{|k,v| [k,v.count]}]
    
  end
 
  def surveylist
    @surveys = Survay.all
  end

  def usersurveylist
    @surveys = Survay.all
  end
  
  def edit
    @survey = Survay.find(params[:id])
  end
 
  def update
    @survey = Survay.find(params[:id])
    if @survey.update_attributes(params[:survay])
      flash[:notice] = 'Survey was successfully updated.'
      redirect_to action: :show, id: @survey
    else
      render :action => 'edit'
   end
  end

  def show
    @survey = Survay.find(params[:id])
  end

  def list
    @survey= @params['survay']
    @survey= Survay.find_all
  end

  def destroy
    @survey = Survay.find(params[:id])
    @survey.destroy
    redirect_to action: :index	
  end
end	
