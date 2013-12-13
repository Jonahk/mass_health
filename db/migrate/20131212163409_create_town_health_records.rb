class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop
      t.integer :age_0_19
      t.integer :age_65_plus
      t.integer :per_capita_income
      t.integer :below_200_percent_poverty
      t.float :percent_below_200_percent_poverty
      t.float :percent_adequacy_prenatal_care
      t.float :percent_c_section_deliveries
      t.integer :number_of_infant_deaths
      t.float :infant_mortality_rate_deaths
      t.float :percent_low_birthweight
      t.float :percent_multiple_births
      t.float :percent_publicly_financed_prenatal_care
      t.float :percent_teen_births
      t.timestamps
    end
  end
end
