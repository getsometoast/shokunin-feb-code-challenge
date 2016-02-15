include_recipe 'apt'
package 'nginx'

execute '/etc/init.d/nginx start' do
  action :run
end
