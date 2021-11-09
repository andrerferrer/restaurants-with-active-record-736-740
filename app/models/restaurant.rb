class Restaurant < ApplicationRecord
  def good?
    rating > 3
  end
end
