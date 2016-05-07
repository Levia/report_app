class TaxonConcept < ActiveRecord::Base
  validates_uniqueness_of :scientific_name
end
