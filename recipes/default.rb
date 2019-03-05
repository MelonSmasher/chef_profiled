#
# Cookbook:: chef_profiled
# Recipe:: default
#
# MIT
#

# only run on supported platforms
if %w( aix amazon centos fedora freebsd debian gentoo solaris oracle redhat suse opensuse opensuseleap ubuntu zlinux arch_linux ).include? node['platform']
  node['chef_profiled']['scripts'].each do |name, lines|
    template "/etc/profile.d/#{name}.sh" do
      source 'script.sh.erb'
      owner 'root'
      group 'root'
      mode '0755'
      variables(lines: lines)
      action :create
    end
  end
else
  log 'chef_profiled:unsupported_platform' do
    message "#{node['platform']} is not supported..."
    level :warn
  end
end