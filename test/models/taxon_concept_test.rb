require 'test_helper'

class TaxonConceptTest < ActiveSupport::TestCase
  test "invalid when already existing scientific_name" do
    tc = TaxonConcept.create({scientific_name: 'Canis Lupus'})
    tc2 = TaxonConcept.new({scientific_name: 'Canis Lupus'})

    assert !tc2.valid?, "Scientific name uniqueness is not being validated"
  end
end
