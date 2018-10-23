
execute 'update package' do
  command 'yum install update'
  action :run
end

package 'nginx' do
  action :install
end
service 'nginx' do
  supports :status => true
  action [:enable, :start]
end


template "/usr/share/nginx/html/index.html" do
  source "index.html"
  mode "0644"
  owner 'root'
  group 'root'
  action :create
end
