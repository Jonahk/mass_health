# What 3 towns have the highest population of citizens that are 65 years and older?

TownHealthRecord.select('geography').order(age_65_plus: :desc).limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?

TownHealthRecord.select('geography').order(age_0_19: :desc).limit(3)

# What 5 towns have the lowest per capita income?

TownHealthRecord.select('geography').order(per_capita_income: :asc).limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

TownHealthRecord.select('geography').where("geography IS NOT NULL").order(percent_teen_births: :desc).limit(1)

# Omitting Boston, what town has the highest number of infant mortalities?

TownHealthRecord.select('geography').where("geography != 'Boston'").order(number_of_infant_deaths: :desc).limit(1)