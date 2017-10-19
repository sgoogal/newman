#attributes 

case node['platform_family']
 when 'rhel'
  default['nodejs']['repo']         = 'https://rpm.nodesource.com/pub_6.x/el/6/$basearch'
  default['repo']['gpgkey']         = 'https://rpm.nodesource.com/pub/el/NODESOURCE-GPG-SIGNING-KEY-EL'

 when 'debian'
  default['nodejs']['repo']         = 'https://deb.nodesource.com/node_6.x'
  default['nodejs']['keyserver']    = 'keyserver.ubuntu.com'
  default['nodejs']['key']          = '1655a0ab68576280'
end


