execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end
package 'nginx' do
  action :install
end


service 'nginx' do
  action [ :enable, :start ]
end

template "/var/www/html/index.nginx-debian.html" do
  source "index.html"
  mode "0644"
  owner 'root'
  group 'root'
  action :create
end
