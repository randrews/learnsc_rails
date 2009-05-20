class TaskPresenter
  def initialize params={}
  end

  def to_hash
    { :records=>records }
  end

  private

  def records
    @records ||= Task.all.map(&:to_hash)
  end
end
