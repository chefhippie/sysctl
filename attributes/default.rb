#
# Cookbook Name:: sysctl
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
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

default["sysctl"]["settings"] = {
  "net.ipv4.ip_forward" => 0,
  "net.ipv4.tcp_syncookies" => 1,
  "net.ipv6.conf.all.forwarding" => 0,
  "kernel.sysrq" => 1
}

default["sysctl"]["removed_files"] = %w(
  /etc/sysctl.d/README.sysctl
  /etc/sysctl.d/99-hetzner.conf
  /etc/sysctl.d/99-sysctl.conf
)