#
# Cookbook Name:: sysctl
# Attributes:: hetzner
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

default["sysctl"]["hetzner"]["settings"] = {
  "net.ipv4.ip_forward" => 1,
  "net.ipv4.conf.all.rp_filter" => 1,
  "net.ipv4.icmp_echo_ignore_broadcasts" => 1,
  "net.ipv6.conf.default.autoconf" => 0,
  "net.ipv6.conf.default.accept_dad" => 0,
  "net.ipv6.conf.default.accept_ra" => 0,
  "net.ipv6.conf.default.accept_ra_defrtr" => 0,
  "net.ipv6.conf.default.accept_ra_rtr_pref" => 0,
  "net.ipv6.conf.default.accept_ra_pinfo" => 0,
  "net.ipv6.conf.default.accept_source_route" => 0,
  "net.ipv6.conf.default.accept_redirects" => 0,
  "net.ipv6.conf.default.forwarding" => 0,
  "net.ipv6.conf.all.autoconf" => 0,
  "net.ipv6.conf.all.accept_dad" => 0,
  "net.ipv6.conf.all.accept_ra" => 0,
  "net.ipv6.conf.all.accept_ra_defrtr" => 0,
  "net.ipv6.conf.all.accept_ra_rtr_pref" => 0,
  "net.ipv6.conf.all.accept_ra_pinfo" => 0,
  "net.ipv6.conf.all.accept_source_route" => 0,
  "net.ipv6.conf.all.accept_redirects" => 0,
  "net.ipv6.conf.all.forwarding" => 1
}
