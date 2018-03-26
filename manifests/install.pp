class web::install {

	package { 'web software':
		ensure => present,
		name   => 'httpd',
	}
}

