# Class: web
# ===========================
#
# Full description of class web here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'web':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
#


class web(


String $class_package_name = $::web::params::package_name,
String $class_service_name = $::web::params::service_name,
String $class_server_ip    = $::web::params::server_ip,



)   inherits ::web::params {

#	class { 'web::install': 
#		before => Class['web::service']
#}
#
#	class { 'web::webdeploy': }
#	class { 'web::service': 
#		require => Class['web::install']
#}


class { 'web::install': }
class { 'web::docroot': }

class { 'web::webconf': 
#	notify => Class['web::service']
}



class { 'web::webdeploy': }
class { 'web::service': 
#	subscribe => Class['web::webconf']
}



Class['web::install']  ->  Class['web::docroot'] ->  Class['web::webconf'] ~>   Class['web::service'] -> Class['web::webdeploy']



notify { hiera('secret'):  }



}

