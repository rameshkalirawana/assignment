execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end
  package 'apache2' do
  action :install
    end

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end
template '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
