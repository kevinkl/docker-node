#
# Cookbook Name:: docker-node
# Recipe:: service
#
# Copyright (C) 2015 Sebastian Gerau
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Ensuring we have offical Docker repo available
# for native package installation
case node['platform']
when 'centos'
  include_recipe 'yum-docker'
when 'ubuntu'
  include_recipe 'apt-docker'
end

HTTP_PROXY = node['docker-node']['http_proxy']
HTTPS_PROXY = node['docker-node']['https_proxy']
NO_PROXY = node['docker-node']['no_proxy']

docker_service 'default' do
  version node['docker-node']['version']
  install_method node['docker-node']['install_method']
  insecure_registry node['docker-node']['insecure_registry']

  unless HTTP_PROXY.empty? http_proxy node['docker-node']['http_proxy']
  unless HTTPS_PROXY.empty? https_proxy node['docker-node']['https_proxy']
  unless NO_PROXY.empty? no_proxy node['docker-node']['no_proxy']

  action [:create, :start]
end
