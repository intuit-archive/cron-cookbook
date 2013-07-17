name        'cron_test'
maintainer  'Intuit, Inc.'
description 'Acceptance tests for cron cookbook'

%w{ centos rhel }.each do |os|
  supports os
end

depends 'cron'
