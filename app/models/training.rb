class Training < ActiveRecord::Base

  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 30,
                                                       less_than_or_equal_to: 600,
                                                       only_integer: true}



end
