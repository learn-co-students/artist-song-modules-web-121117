module Findable
  def find_by_name(name)
    self.all.detect{|attribute| attribute.name == name}
  end
end
