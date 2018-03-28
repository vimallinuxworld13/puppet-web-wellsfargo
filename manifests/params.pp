class  web::params {


case $facts['os']['family'] {


'RedHat': {

$package_name = "httpd"
$service_name = "httpd"
$server_ip = $facts['networking']['interfaces']['enp0s3']['ip']

}

'Debian': {

$package_name = "apache2"
$service_name = "apache2"
$server_ip = $facts['networking']['interfaces']['enp0s3']['ip']

}


#'Windows': {
#
#}

default: {
	fail("ur OS not supported")
}



}


}
