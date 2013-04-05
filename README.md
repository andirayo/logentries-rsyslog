Description [![Build Status](https://travis-ci.org/hipsnip/logentries-rsyslog.png)](https://travis-ci.org/hipsnip/logentries-rsyslog)
===========
A simple cookbook for setting up a server to stream logs into Logentries via the
Token-based input, using Rsyslogd.

> NOTE: While it is fully functional, this cookbook is no longer being actively worked on.
If you're interested in taking over, please do get in touch!


Compatibility
=============
Built to run on systems with Rsyslog installed, tested on Ubuntu 12.04.


Attributes
==========
* logentries/syslog_selector
    * The syslog tags and types to stream into Logentries (defaults to "*.*")
* logentries/resume_retry_count
    * The number of times to retry the sending of failed messages (defaults to unlimited)
* logentries/queue_disk_space
	* The maximum disk space allowed for queues (default to 100M)
* logentries/enable_tls
	* Whether to encrypt all log traffic going into Logentries (default to True). Automatically switches from UDP to TCP as well.


Usage
=====
First, make sure you set the ['logentries']['token'] attribute in your Role/Environment
to the token created in Logentries for your input. Then include the "logentries::default"
recipe in you run list to start streaming all syslog entries to Logentries.

### Tailing log files
This functionality is currently not available, but will be provided via the Opscode Rsyslog cookbook
(included as a dependency), where there is an open pull request for it at the time of this writing.


Development
============
First, you'll need [RVM](https://rvm.io/) installed. If you don't want to use RVM,
then just make sure you use the Ruby version specified in `.rvmrc`.

To get the dependencies:

    gem install bundler (if you don't have it)
    bundle install
    bundle exec berks install

To run the "offline" syntax checks and unit tests (this is what's run in Travis):

    bundle exec rake test

To run the full test suite, including the integration tests via Test Kitchen (this can take a while):

    bundle exec rake full_test


License and Author
==================

Author:: Adam Borocz ([on GitHub](https://github.com/motns))

Copyright:: 2013, HipSnip Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
