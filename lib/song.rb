require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []

  def initialize
    # @@songs << self
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end


  def self.all
    @@songs
  end
end
