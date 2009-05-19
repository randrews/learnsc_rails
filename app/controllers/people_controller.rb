class PeopleController < ApplicationController

  def index
    render :json => PersonPresenter.new.to_hash
  end
end
