#
# Cookbook Name:: docker-node
# Recipe:: default
#
# Copyright (C) 2015 Sebastian Gerau
#
# All rights reserved - Do Not Redistribute
#

docker_service 'default' do
	action [:create, :start]
end