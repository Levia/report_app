class CreateTaxonConcepts < ActiveRecord::Migration
  def change
    create_table :taxon_concepts do |t|
      t.string :scientific_name, null: false

      t.timestamps null: false
    end
  end
end
