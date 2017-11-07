current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jeffrey_fall"
validation_client_name   "chef-validator"
client_key               "/Users/jeffrey_fall/.chef/jeffrey_fall.pem"
validation_key		"/Users/jeffrey_fall/.chef/chef_validator.pem"
chef_server_url          "https://chefserver/organizations/myorg"
#cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_path            "/Users/jeffrey_fall/chef-repo/cookbooks" 
