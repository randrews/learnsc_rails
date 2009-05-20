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

  def create
    # this is just SproutCore's temporary guid; we'll return the persistent, real guid if this is successful
    @person_params = clean_params(JSON.parse(params[:person]))
    person = Person.create!(@person_params)
    render :json => person.to_hash
  rescue ActiveRecord::RecordInvalid
    render :text => "Unable to create person due to #{$!.message}", :status => :unprocessable_entity
  end

  private

  def clean_params hash
    clean={}
    hash.slice('id','firstName','lastName','salary').each do |k,v|
      clean[k.underscore]=v
    end
    clean
  end
end
