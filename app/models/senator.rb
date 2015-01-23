require_relative '../../db/config'

class Senator < Politician

  def name
    "#{firstname} #{lastname}"
  end

end