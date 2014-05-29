# enable / disable puppet agent.
class puppet::agent::service::control {

  include ::puppet::agent::service::control::params
  include ::puppet::params

  if $::puppet::agent::service::control::enabled {
    include ::puppet::agent::service
  }
  else {
      # Ensure both cron and service script is disabled
      service {'puppet':
        ensure    => stopped,
        name      => $puppet::params::service_name,
        hasstatus => true,
        enable    => false,
      }

      cron { 'puppet':
        ensure => absent,
      }
    }
}