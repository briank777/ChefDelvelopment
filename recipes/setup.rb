

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



template '/etc/motd' do
	source 'motd.erb'
	variables(
	  :name => 'technotrainer'
	)
	action :create
end



