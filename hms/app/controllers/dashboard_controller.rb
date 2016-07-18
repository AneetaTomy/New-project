class DashboardController < ApplicationController
  def index
  end


  def show
  	@user=User.find_by(id: session[:current_user])
  	redirect_to users_path unless @user
  	@medication = Medication.new
  end 
  def medication
  	@medication = Medication.new(medication_params)
  	if @medication.save  
    redirect_to :back
    end
  end	
private
   def medication_params
   	params[:medication][:dosage] = params[:dosage].join(' ')
  	params.require(:medication).permit(:drug_name, :dosage, :timing)
  end
end

