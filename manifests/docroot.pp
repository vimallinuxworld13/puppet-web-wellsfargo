class web::docroot {


file { 'my doc root':
	ensure => directory,
	path   => "/var/www/new",
	owner  => 'apache',
	mode   => '0755',
}

}
