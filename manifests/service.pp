class  web::service  {

	service { 'web services':
		ensure => running,
		name   => 'httpd',
		enable => true,
	}

}
