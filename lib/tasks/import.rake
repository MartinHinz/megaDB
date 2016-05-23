#require 'csv'

#desc "Import teams from csv file"
#task :import => [:environment] do

#  file = "db/sources.csv"

#  CSV.foreach(file, :headers => true) do |row|
#    puts row['name']
#    Source.create(name: row['name'])
#  end

#end
