class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    # find all Company rows
    # render companies/index view
  end

  def show
    @company = Company.find_by ({"id" => params["id"]})
    @contacts = Contact.where({"company_id" => @company["id"]})
    # find a Company
    # render companies/show view with details about Company
  end

  def new
    # render view with new Company form
  end

  def create
    @company = Company.new
    @company["name"] = params["name"]
    @company["city"] = params["city"]
    @company["state"] = params["state"]
    @company.save
    redirect_to "/companies"
    # start with a new Company
    # assign user-entered form data to Company's columns
    # save Company row
    # redirect user
  end

  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end

  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end

  # def destroy
  #   # find a Company
  #   # destroy Company row
  #   # redirect user
  # end

end
