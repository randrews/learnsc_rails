class PeopleController < ApplicationController

  def index
    render :json => PersonPresenter.new.to_hash
  end

  def update
    p=Person.find_by_id params[:id]
    par=JSON::parse params[:person]
    
    p.first_name=par['firstName']
    p.last_name=par['lastName']
    p.salary=par['salary']
    p.save

    render :json=>p.to_hash
  end
end
