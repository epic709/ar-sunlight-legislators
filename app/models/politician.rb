require_relative '../../db/config'

class Politician < ActiveRecord::Base
  has_many :tweets

  def name
    "#{firstname} #{lastname}"
  end

end
