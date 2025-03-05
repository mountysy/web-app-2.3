class ActivitiesController < ApplicationController

  def new
    @contact = Contact.find_by ({"id" => params["contact_id"]}) 
  end

  def create
    @activity = Activity.new
    @activity["note"] = params["note"]
    @activity["activity_type"] = params["activity_type"]
    @activity["contact_id"] = params["contact_id"]
    @activity["company_id"] = params["company_id"]
    @activity.save

    redirect_to "/contacts/#{@activity["contact_id"]}"
  end

end
