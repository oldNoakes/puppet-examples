class test::hiera::duplication($proxy = 'localproxy', $proxy_options = {}) {
  file { 'hiera.dupe.test':
    path    => "$::local_tmp/hiera.dupe.test",
    content => template('test/hiera.dupe.test.erb')
  }
}
