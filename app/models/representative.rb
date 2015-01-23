require_relative '../../db/config'

class Representative < Politician

  def name
    "#{firstname} #{lastname}"
  end

end