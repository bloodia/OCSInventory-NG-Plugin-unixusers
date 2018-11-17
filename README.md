# OCSInventory-NG-Plugin-unixusers
[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://github.com/bloodia/OCSInventory-NG-Plugin-unixusers/blob/master/LICENSE)

## Overview
This Perl Module file is that runs on unix and retrieve all unix users via OCS Inventory NG Unix Agent.

## Requires
### OCS Inventory NG Server
- 2.5 and higher

### OCS Inventory NG Unix Agent
- 2.3 and higher

## How to Install
### OCS Inventory NG Server
- Put unixusers.zip in download folder in ocsreports (By default /usr/share/ocsinventory-reports/ocsreports/download)
- In the ocsreports webconsole click on plugins -> plugin manager.
- Select unixusers in the dropdown and click on install.

### OCS Inventory NG Unix Agent
- Put unixusers.pm in perl modules folder (By default /usr/share/perl5/vendor_perl/Ocsinventory/Agent/Modules) on the agent.
- Add "use Ocsinventory::Agent::Modules::unixusers;" to modules conf file (By default /etc/ocsinventory/modules.conf)

## Author
[@bloodia](https://twitter.com/bloodiadotnet)
