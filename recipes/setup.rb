

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


#new comment
service 'ntpd'  do
	action  [ :enable, :start ]
end



file '/etc/motd' do
	action :create
	content "This server is the property of LinuxAcademy
        HOSTNAME: #{node['hostname']}
	IPADDRESS:#{node['ipaddress']} 
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}


"
	owner  'root'
	group 'root'	
end




