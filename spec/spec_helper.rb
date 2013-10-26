root_dir = File.expand_path("../", File.dirname(__FILE__))
Dir[root_dir + "**/*.rb"].each { |file| require file }
