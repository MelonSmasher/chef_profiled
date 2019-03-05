name 'chef_profiled'
maintainer 'Alex Markessinis'
maintainer_email 'markea125@gmail.com'
license 'MIT'
description 'Manages profile.d scripts through Chef attributes.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.3'
chef_version '>= 12.1' if respond_to?(:chef_version)

%w( aix amazon centos fedora freebsd debian gentoo solaris oracle redhat suse opensuse opensuseleap ubuntu zlinux arch_linux ).each do |os|
  supports os
end

issues_url 'https://github.com/MelonSmasher/chef_profiled/issues' if respond_to?(:issues_url)
source_url 'https://github.com/MelonSmasher/chef_profiled' if respond_to?(:source_url)
