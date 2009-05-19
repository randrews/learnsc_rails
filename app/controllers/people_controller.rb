class PeopleController < ApplicationController

  def index
    render :json => PeoplePresenter.new.to_hash
  end
end
