#
# Cookbook Name:: sysctl
# Provider:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

action :create do
  template "/etc/sysctl.d/#{new_resource.filename}.conf" do
    owner "root"
    group "root"
    mode 0644

    cookbook "sysctl"
    source "sysctl.conf.erb"

    variables(
      "settings" => new_resource.values
    )
  end

  new_resource.updated_by_last_action(true)
end

action :delete do
  file "/etc/sysctl.d/#{new_resource.filename}.conf" do
   action :delete
  end

  new_resource.updated_by_last_action(true)
end

action :set do
  new_resource.values.each do |key, value|
    execute "sysctl_#{key.gsub(".", "_")}" do
      command "sysctl -w #{key}=#{value}"
      not_if do
        `sysctl -n #{key}`.strip == value.to_s
      end
    end
  end

  new_resource.updated_by_last_action(true)
end
