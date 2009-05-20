class TasksController < ApplicationController

  def index
    render :json => TaskPresenter.new.to_hash
  end

end
