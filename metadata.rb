name             'cron-cookbook'
maintainer       'Chad Cloes'
maintainer_email 'chad_cloes@intuit.com'
license          'Apache 2.0'
description      'Configures cron'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

%w{redhat centos}.each do |os|
  supports os
end
