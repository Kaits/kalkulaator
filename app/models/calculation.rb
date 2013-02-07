class Calculation < ActiveRecord::Base
  attr_accessible :aastad, :aktsia_nimi, :hind, :kogus, :protsent

  validates :aastad, :aktsia_nimi, :hind, :kogus, :protsent, :presence => true
  validates :aktsia_nimi, :length => { :minimum => 4 }
  validates :aktsia_nimi, :uniqueness => true
end
