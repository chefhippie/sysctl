#
# Cookbook Name:: sysctl
# Attributes:: server4you
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

default["sysctl"]["server4you"]["settings"] = {
  "net.ipv4.conf.default.rp_filter" => 1,
  "net.ipv4.conf.all.rp_filter" => 1,
  "net.ipv4.tcp_syncookies" => 1,
  "net.ipv4.conf.all.secure_redirects" => 1,
  "net.ipv4.conf.all.send_redirects" => 0,
  "net.ipv4.conf.all.accept_source_route" => 0,
  "net.ipv6.conf.all.accept_source_route" => 0,
  "net.ipv4.conf.all.log_martians" => 1
}
