directory = File.expand_path(File.dirname(__FILE__))

cookbook_path "#{directory}/cookbooks"
file_cache_path "#{directory}/cache"
role_path "#{directory}/roles"
