class Customer < ActiveRecord::Base
  def type 
    if is_private
      "privé" 
    elsif is_public
      "public"
    elsif is_individual
      'particulier'
    else
      nil
    end
  end

  def set_type!(key)
    #is_public     = false
    #is_private    = false
    #is_individual = false
    #self.send(key) = true
  end
end
