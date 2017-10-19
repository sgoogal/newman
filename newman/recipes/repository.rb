case node['platform_family']
 when 'rhel'
 yum_repository 'node.js' do
     description 'nodesource.com nodejs repository'
     baseurl node['nodejs']['repo']
     gpgkey node['repo']['gpgkey']
     action :create
 end

 when 'debian'
 apt_repository 'node.js' do
    uri node['nodejs']['repo']
    components ['main']
    keyserver node['nodejs']['keyserver']
    key node['nodejs']['key']
  end
end
