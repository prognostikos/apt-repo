include_recipe "apt"

apt_repository "bn" do
  uri 'http://bn-apt-repo.s3.amazonaws.com'
  distribution node['lsb']['codename']
  components ['main']
  arch 'amd64'
  trusted true
end

execute 'update' do
  command 'apt-get update'
end

package "reprepro"

package 'ruby'
