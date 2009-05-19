class Person < ActiveRecord::Base

  def to_hash
    attributes.merge :guid=>id, :type=>'Person'
  end

end
