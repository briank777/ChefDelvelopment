

#Setup.rb file for Chef
#
#
package 'tree' do
	action :install
end

package 'ntp' do
	action  :install
end

package 'git' do
	action :install
end



service 'ntpd'  do
	action  [ :enable, :start ]
end

file '/etc/motd' do
	action :create
	content 'This server is the property of LinuxAcademy'
	owner  'root'
	group 'root'	
end




