class Task < ActiveRecord::Base
  belongs_to :person

  def to_hash
    attrs={}
    attributes.merge(:guid=>id,
                     :person=>person_id,
                     :type=>'Task').each do |k,v|
      attrs[k.to_s.camelize(:lower)]=v
    end
    attrs
  end
end
