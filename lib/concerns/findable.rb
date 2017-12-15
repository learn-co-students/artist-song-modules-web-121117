module Findable

  def find_by_name(name)
    all.find {|list| list.name == name}
  end
  
end
