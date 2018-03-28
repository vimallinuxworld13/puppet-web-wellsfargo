class web::install(

String $local_package_name = $::web::class_package_name,

)   {

	package { 'web software':
		ensure => present,
		name   => $local_package_name,
	}
}

