module DateTimeFormats

  def self.formats
    rails, default = {}, {}
    default = YAML.load_file("#{File.dirname(__FILE__)}/date_time_formats.yml")
    rails   = YAML.load_file("#{Rails.root}/config/date_time_formats.yml") if defined?(Rails) && File.exists?("#{Rails.root}/config/date_time_formats.yml")

    default.merge(rails) # Rails.root/config/date_time_formats.yml override defaults
  end

  class DateTimeFormatsRailtie < Rails::Railtie
    initializer "date_time_formats.initialize" do
      DateTimeFormats.formats.keys.each { |key| Time::DATE_FORMATS[key.to_sym] = DateTimeFormats.formats[key] }
    end

    rake_tasks do
      load "tasks/date_time_formats_tasks.rake"
    end
  end
end
