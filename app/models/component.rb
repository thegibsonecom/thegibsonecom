class Component < ActiveRecord::Base
  
  named_scope :all_active, :conditions => 'active = true'
end
