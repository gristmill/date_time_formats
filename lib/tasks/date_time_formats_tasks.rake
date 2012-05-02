desc "List available date time formats"
task :date_time_formats => :environment do
  puts ["KEY".ljust(30), "FORMAT".ljust(30), "RESULT".ljust(30), "USAGE"].join(" ")

  DateTimeFormats.formats.each do |key,format|
    puts ["#{key}".ljust(30), "#{format}".ljust(30), Time.now.to_s(key.to_sym).ljust(30), "Time.now.to_s(:#{key})"].join(" ")
  end
end
