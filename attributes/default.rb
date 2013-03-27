default['logentries']['token'] = ''
default['logentries']['resume_retry_count'] = -1
default['logentries']['syslog_selector'] = '*.*'
default['logentries']['queue_disk_space'] = '100M'

default['logentries']['enable_tls'] = true

default['logentries']['port'] = default['logentries']['enable_tls'] ? 20000 : 10000