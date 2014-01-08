#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
  supports :manage_home => true
  home "/home/tdi"
  shell "/bin/bash"
  password "$1$XADleQlv$0a3In0rarzVhaJVmcPubt/"
end

package "irssi" do
  action :install
end

directory "/home/tdi/.irssi" do
  owner "tdi"
  group "tdi"
end

cookbook_file "config" do
  path "/home/tdi/.irssi/config"
  action :create
end
