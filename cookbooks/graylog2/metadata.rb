maintainer        "Phil Sturgeon"
maintainer_email  "email@philsturgeon.co.uk"
license           "Apache 2.0"
description       "Installs and configures Graylog2"
version           "0.1.0"

# Only supporting Ubuntu 10.x and up
supports "ubuntu"

# OpsCode cookbook dependencies
depends "apt"     # http://community.opscode.com/cookbooks/apt

recipe "graylog2::default", "Installs and configures Graylog2"
recipe "graylog2::server", "Installs and configures Graylog2 Server"
#recipe "graylog2::web_interface", "Installs and configures Graylog2 Web Interface"
#recipe "graylog2::apache2", "Installs and configures Apache2 to server up the Graylog2 Web Interface"

attribute "graylog2",
  :display_name => "Graylog2 Hash",
  :description => "Hash of Graylog2 attributes",
  :type => "hash"

# default[:graylog2][:repo] = 'http://download.graylog2.org'
attribute "graylog2/repo",
  :display_name => "Graylog2 Repo",
  :description => "Debian repository for Graylog2 install",
  :default => 'http://download.graylog2.org'

# default[:graylog2][:basedir] = "/var/graylog2"
attribute "graylog2/basedir",
  :display_name => "Graylog2 Base Directory",
  :description => "Installation directory for Graylog2",
  :default => '/var/graylog2'
  
# default[:graylog2][:server][:version] = "0.11.0"
attribute "graylog2/server/version",
  :display_name => "Graylog2 Version",
  :description => "Graylog2 version to install",
  :default => '0.11.0'
  
# default[:graylog2][:web_interface][:version] = "0.11.0"
attribute "graylog2/web_interface/version",
  :display_name => "Graylog2 Web Interface Version",
  :description => "Graylog2 web interface version to install",
  :default => '0.11.0'
  
# default[:graylog2][:web_interface][:listen_port] = 4500 # if this is not 80 you need to override default['apache']['listen_ports'] = [ "80" ] 
attribute "graylog2/web_interface/listen_port",
  :display_name => "Graylog2 Web Interface Listen Port",
  :description => "Graylog2 Web Interface Listen Port",
  :default => '4500'
  
# default[:graylog2][:elasticsearch][:repo] = 'http://download.elasticsearch.org/elasticsearch/elasticsearch'
attribute "graylog2/elasticsearch/repo",
  :display_name => "Elasticsearch Repo",
  :description => "Debian repository for Elasticsearch install",
  :default => 'http://download.elasticsearch.org/elasticsearch/elasticsearch'
  
# default[:graylog2][:elasticsearch][:version] ="0.20.6"
attribute "graylog2/elasticsearch/version",
  :display_name => "Elasticsearch Version",
  :description => "Elasticsearch version to install",
  :default => '0.20.6'
  
# default[:graylog2][:mongodb][:host] = "localhost"
attribute "graylog2/mongodb/host",
  :display_name => "MongoDB hostname",
  :description => "MongoDB hostname",
  :default => 'localhost'
  
# default[:graylog2][:mongodb][:port] = 27017
attribute "graylog2/mongodb/port",
  :display_name => "MongoDB port",
  :description => "MongoDB port",
  :default => '27017'
  
# default[:graylog2][:mongodb][:max_connections] = 150
attribute "graylog2/mongodb/max_connections",
  :display_name => "MongoDB max connections",
  :description => "MongoDB max connections",
  :default => '150'
  
# default[:graylog2][:mongodb][:database] = "graylog2"
attribute "graylog2/mongodb/database",
  :display_name => "MongoDB database",
  :description => "MongoDB database",
  :default => 'graylog2'
  
# default[:graylog2][:mongodb][:auth] = "false"
attribute "graylog2/mongodb/auth",
  :display_name => "Enable MongoDB Authentication",
  :description => "Enable MongoDB Authentication",
  :default => 'false'
  
# default[:graylog2][:mongodb][:user] = "user"
attribute "graylog2/mongodb/user",
  :display_name => "MongoDB user",
  :description => "MongoDB user",
  :default => 'user'
  
# default[:graylog2][:mongodb][:password] = "password"
attribute "graylog2/mongodb/password",
  :display_name => "MongoDB password",
  :description => "MongoDB password",
  :default => 'password'
  
# default[:graylog2][:protocol] = "udp"
attribute "graylog2/protocol",
  :display_name => "Graylog2 Protocol",
  :description => "Graylog2 protocol",
  :default => 'udp'
  
# default[:graylog2][:port] = 514
attribute "graylog2/port",
  :display_name => "Graylog2 Port",
  :description => "Graylog2 port",
  :default => '514'
  
# default[:graylog2][:gelf_port] = 12201
attribute "graylog2/gelf_port",
  :display_name => "Graylog2 Gelf Port",
  :description => "Graylog2 Gelf port",
  :default => '12201'
  
# default[:graylog2][:collection_size] = 50000000
attribute "graylog2/collection_size",
  :display_name => "Graylog2 Collection Size",
  :description => "Size of Graylog2 capped collection",
  :default => '50000000'
  
# default[:graylog2][:email] = "graylog2@example.org"
attribute "graylog2/email",
  :display_name => "Graylog2 Email",
  :description => "Graylog2 email",
  :default => 'graylog2@example.com'
  
# default[:graylog2][:email_package] = "postfix"
attribute "graylog2/email_package",
  :display_name => "Graylog2 Email program",
  :description => "Graylog2 Email program used to send emails",
  :default => 'postfix'
  
# default[:graylog2][:allow_deleting] = "false"
attribute "graylog2/allow_deleting",
  :display_name => "Graylog2 Allow Deleting",
  :description => "Enable deleting of logs from Graylog2",
  :default => 'false'
  
# default[:graylog2][:send_stream_alarms] = true
attribute "graylog2/send_stream_alarms",
  :display_name => "Graylog2 Stream Alarms",
  :description => "Enable sending of stream alarms",
  :default => 'true'
  
# default[:graylog2][:send_stream_subscriptions] = true
attribute "graylog2/send_stream_subscriptions",
  :display_name => "Graylog2 Stream Subscriptions",
  :description => "Enable sending of stream subscriptions",
  :default => 'true'
  
# default[:graylog2][:stream_alarms_cron_minute] = "*/15"
attribute "graylog2/stream_alarms_cron_minute",
  :display_name => "Graylog2 Stream Alarms cron minute",
  :description => "Graylog2 Stream Alarms cron minute",
  :default => '*/15'
  
# default[:graylog2][:stream_subscriptions_cron_minute] = "*/15"
attribute "graylog2/stream_subscriptions_cron_minute",
  :display_name => "Graylog2 Stream Subscription cron minute",
  :description => "Graylog2 Stream Subscription cron minute",
  :default => '*/15'

# default[:graylog2][:external_hostname] = nil
attribute "graylog2/external_hostname",
  :display_name => "Graylog2 External Hostname",
  :description => "Graylog2 External Hostname"

# default[:graylog2][:server_name] = "graylog2"
attribute "graylog2/server_name",
  :display_name => "Graylog2 Server Name",
  :description => "Graylog2 Server Name",
  :default => 'graylog2'

# default[:graylog2][:ruby_version] = "1.9.3-p327"
attribute "graylog2/ruby_version",
  :display_name => "Graylog2 Ruby Version",
  :description => "Graylog2 Ruby Version",
  :default => '1.9.3-p327'

# default[:graylog2][:passenger_version] = "4.0.5"
attribute "graylog2/passenger_version",
  :display_name => "Graylog2 Passenger Version",
  :description => "Graylog2 Passenger Version",
  :default => '4.0.5'

# default[:graylog2][:unicorn][:worker_processes] = 1
attribute "graylog2/unicorn/worker_processes",
  :display_name => "Graylog2 Unicorn Worker Processes",
  :description => "Number of Unicorn Worker Processes",
  :default => '1'

# default[:graylog2][:unicorn][:timeout] = 30
attribute "graylog2/unicorn/timeout",
  :display_name => "Graylog2 Unicorn Timeout",
  :description => "Number of Unicorn Timeout",
  :default => '30'

# default[:graylog2][:unicorn][:preload_app] = true
attribute "graylog2/unicorn/preload_app",
  :display_name => "Graylog2 Unicorn Preload",
  :description => "Number of Unicorn Preload",
  :default => 'true'
