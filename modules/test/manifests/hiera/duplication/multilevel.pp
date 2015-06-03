class test::hiera::duplication::multilevel($common_value, $specific_value) {
  file { 'multi.level.dupe.test':
    path    => "$::local_tmp/multi.level.dupe.test",
    content => template('test/multi.level.hiera.dupe.test.erb')
  }
}
