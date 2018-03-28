class web::webconf {

	file { 'deploy conf file':
	ensure => file,
	path   => '/etc/httpd/conf.d/vimal.conf',
#	source => 'puppet:///modules/web/vimal.conf',
	content => template('web/vimal.conf.erb'), 
	owner  => 'apache',
	mode   => '0644',
}

}
