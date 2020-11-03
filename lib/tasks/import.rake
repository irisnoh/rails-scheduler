desc "import technicians, locations and work_orders csv files"
task :import, [:filename] => :environment do
    CSV.foreach("technicians.csv", :headers => true, header_converters: :symbol) do |row|
    puts row
    Technician.create! row.to_hash
    end
    CSV.foreach("locations.csv", :headers => true, header_converters: :symbol) do |row|
        puts row
    Location.create! row.to_hash
    end
    CSV.foreach("work_orders.csv", :headers => true, header_converters: :symbol) do |row|
        puts row
    Workorder.create! row.to_hash
    end
end


#check work orders on import rake or iris orders
#bundle exec rake import