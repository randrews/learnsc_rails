class Person < ActiveRecord::Base

  def to_hash
    attrs={}
    attributes.merge(:guid=>id, :type=>'Person').each do |k,v|
      attrs[k.to_s.camelize(:lower)]=v
    end
    attrs
  end

end
