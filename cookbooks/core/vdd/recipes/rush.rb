git "/home/vagrant/.drush/rush" do
    repository "https://github.com/palantirnet/rush.git"
    action :sync
end


directory "/home/vagrant/Rush" do
  owner "vagrant"
  group "vagrant"
  mode "0755"
  action :create
end

directory "/home/vagrant/Rush/environment" do
  owner "vagrant"
  group "vagrant"
  mode "0755"
  action :create
end

directory "/home/vagrant/Rush/jobs" do
  owner "vagrant"
  group "vagrant"
  mode "0755"
  action :create
end


template "/home/vagrant/Rush/environment/params.ini" do
  source "rush_params.erb"
  mode "0755"
  owner "vagrant"
  group "vagrant"
end

template "/home/vagrant/.drush/drush.ini" do
  source "drush_ini.erb"
  mode "0755"
  owner "vagrant"
  group "vagrant"
end
