# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  # Return all movies directed in chronological order
  def filmography
    return Movie.where({ :director_id => self.id }).order({ :year => :asc })
  end

end
