require 'csv'

task :technicians => :environment do
    file_path = Rails.root.join('db', 'csv', 'technicians.csv')
    CSV.foreach(file_path, headers: true) do |row|
        Technician.find_or_create_by(name: row["name"])
    end
    puts "technicians done"
end

task :locations => :environment do
    file_path = Rails.root.join('db', 'csv', 'locations.csv')
    CSV.foreach(file_path, headers: true) do |row|
        Location.find_or_create_by(name: row["name"], city: row["city"])
    end
    puts "locations done"
end

task :work_orders => :environment do
    file_path = Rails.root.join('db', 'csv', 'work_orders.csv')
    CSV.foreach(file_path, headers: true) do |row|
        technician = Technician.find_by(id: row["technician_id"])
        location   = Location.find_by(id: row["location_id"])
  
        time = DateTime.parse(row["time"])
  
        WorkOrder.find_or_create_by(
            technician:technician,
            location:location,
            start_time:time
        ) do |order|
            order.duration = row["duration"].to_i
            order.price    = row["price"].to_i
        end
    end
  puts "work orders done"
end

task :doall => :environment do
  Rake::Task[:technicians].invoke
  Rake::Task[:locations].invoke
  Rake::Task[:work_orders].invoke
end
