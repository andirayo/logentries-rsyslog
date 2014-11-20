name             "logentries-rsyslog"
maintainer       "Andreas Rayo Kniep"
maintainer_email "andirayo@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures Logentries for Rsyslog"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.1"
supports 'ubuntu', ">= 12.04"

# To support Ubuntu v14.04, usage of Upstart-provider is necessary which was added in v1.12.2 of cookbook RSysLog (see commit 5e341d0f)
depends "rsyslog", "~> 1.12"

attribute "logentries/syslog_selector",
  :display_name => "Syslog Selector",
  :description => "The syslog tags that should be piped into Logentries - defaults to all",
  :type => "string",
  :default => "*.*"

attribute "logentries/resume_retry_count",
  :display_name => "Retry Count",
  :description => "The number of times to retry the sending of failed messages (defaults to unlimited)",
  :default => "-1"

attribute "logentries/queue_disk_space",
  :display_name => "Queue Disk Space",
  :description => "The maximum disk space allowed for queues",
  :type => "string",
  :default => "100M"

attribute "logentries/enable_tls",
  :display_name => "Enable TLS",
  :description => "Whether to encrypt all log traffic going into Logentries. Automatically switches from UDP to TCP as well.",
  :default => "true"
