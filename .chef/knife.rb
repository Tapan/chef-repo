# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tapan01"
client_key               "#{current_dir}/tapan01.pem"
validation_client_name   "ax01-validator"
validation_key           "#{current_dir}/ax01-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ax01"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
