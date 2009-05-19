class PersonPresenter
  def initialize params={}
  end

  def to_hash
    { :records=>records }
  end

  private

  def people
    @people ||= Person.find(:all)
  end

  def records
    @records ||= people.map(&:to_hash)
  end
end
