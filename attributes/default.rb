#
# Cookbook Name:: docker-node
# Attributes:: default
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

default['docker-node']['docker']['version'] = '1.11.0'
default['docker-node']['docker']['install_method'] = 'package'

default['docker-node']['docker']['daemon']['insecure_registry'] = nil
default['docker-node']['docker']['daemon']['http_proxy'] = ''
default['docker-node']['docker']['daemon']['https_proxy'] = ''
default['docker-node']['docker']['daemon']['no_proxy'] = ''

default['docker-node']['docker']['registry']['tag'] = '2.4.0'
default['docker-node']['docker']['registry']['port'] = '5000'
