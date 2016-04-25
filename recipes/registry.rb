#
# Cookbook Name:: docker-node
# Recipe:: registry
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

docker_image 'registry' do
  tag node['docker-node']['docker']['registry']['tag']
  action :pull_if_missing
end

docker_container 'registry' do
  tag node['docker-node']['docker']['registry']['tag']
  port node['docker-node']['docker']['registry']['port']
  action :run
end
