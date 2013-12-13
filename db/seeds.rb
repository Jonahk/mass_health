# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

def valid(data)
  data.delete(',$NA') if data
end

datafile = Rails.root + "db/data/mass_health_data.csv"

CSV.foreach(datafile, headers:true) do |row|

  if !TownHealthRecord.exists?(geography: row[0])
    TownHealthRecord.create!(geography: row[0],
     total_pop: valid(row[1]),
     age_0_19: valid(row[2]),
     age_65_plus: valid(row[3]),
     per_capita_income: valid(row[4]),
     below_200_percent_poverty: valid(row[5]),
     percent_below_200_percent_poverty: valid(row[6]),
     percent_adequacy_prenatal_care: valid(row[7]),
     percent_c_section_deliveries: valid(row[8]),
     number_of_infant_deaths: valid(row[9]),
     infant_mortality_rate_deaths: valid(row[10]),
     percent_low_birthweight: valid(row[11]),
     percent_multiple_births: valid(row[12]),
     percent_publicly_financed_prenatal_care: valid(row[13]),
     percent_teen_births: valid(row[14]))
  end
end