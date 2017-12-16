module Memorable

  module ClassModules
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceModules
    def initialize
      self.class.all << self
    end
  end
end
