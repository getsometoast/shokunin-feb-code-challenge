include_recipe 'apt'

package 'libreadline-dev'
package 'libncurses5-dev'
package 'libpcre3-dev'
package 'libssl-dev'
package 'perl'
package 'make'
package 'build-essential'

service 'nginx' do
  action :start
end
