# Class: control_puppet_agent
#
# This module manages control_puppet_agent
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class control_puppet_agent {
  require ::puppet
  include ::puppet::agent::service::control
}

include control_puppet_agent