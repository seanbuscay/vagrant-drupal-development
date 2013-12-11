git "/home/vagrant/drush" do
    repository "https://github.com/drush-ops/drush.git"
    revision "5.x"
    action :sync
end
