class Verse < ApplicationRecord
  def to_s
    self.text
  end
end
