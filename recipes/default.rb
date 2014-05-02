#
# Cookbook Name:: jvmtop
# Recipe:: default
#

src_filename = "jvmtop-#{node[:jvmtop][:version]}.tar.gz"
src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"
extract_path = "/usr/local/jvmtop"

remote_file "#{Chef::Config[:file_cache_path]}/jvmtop-#{node[:jvmtop][:version]}.tar.gz" do
  source "https://jvmtop.googlecode.com/files/jvmtop-#{node[:jvmtop][:version]}.tar.gz"
  owner 'root'
  group 'root'
end

bash 'extract_jvmtop' do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    mkdir -p #{extract_path}
    tar xzf #{src_filename} -C #{extract_path}
    chmod 755 #{extract_path}/jvmtop.sh
    EOH
  not_if { ::File.exists?(extract_path) }
end
