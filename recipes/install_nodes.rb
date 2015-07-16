#
# Cookbook Name:: nvm
# Recipe:: install_nodes
#
# Copyright (c) 2015 C. Blake Barber, All Rights Reserved.

node['nvm']['install_nodes'].each do |node_ver, source|
  nvm_install node_ver do
    from_source source
    alias_as_default false
    action :create
  end
end
