[![Build Status](https://secure.travis-ci.org/intuit/cron-cookbook.png)](http://travis-ci.org/intuit/cron-cookbook)

**!!! This project has been deprecated.  We recommend you search the [Chef Supermarket ](https://supermarket.chef.io/) for a supported alternative !!!**

# cron cookbook
Configures cron

# Requirements
* Chef 10.x

Platform:
* CentOS 6.x
* RHEL 6.x

# Usage
Add the cron cookbook to your role/run_list.

# Attributes

None

# Recipes
## default
Configures cron

# Resources/Providers
## authorization
Adds a provided username to /etc/cron.allow.

- `:create` adds a `name` to /etc/cron.allow

### Example
``` ruby
cron_authorization "johnsmith"
```


# Authors
* Thomas Bishop (@thbishop)
* Brett Weaver (@brettweavnet)
* Chad Cloes (@ccloes-intuit)
