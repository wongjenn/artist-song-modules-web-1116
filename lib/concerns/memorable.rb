module Memorable
  module InstanceMethods

  def initialize
    self.class.all << self
  end

    def to_param
      self.name.downcase.gsub(' ', '-')
    end
  end

  module ClassMethods

    def all
      self::ALL
    end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

  end
end
