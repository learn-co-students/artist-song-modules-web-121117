module Memorable



  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
      # here we replace @@artists from original method  with self.all because Memorable doesn't know the @@artist
      # variable - we instead invoke the self.all method, which returns @@artists
    end
  end
  module InstanceMethods
    def initialize
      self.class.all << self
    end

  end

end
