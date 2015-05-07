class test::template::undefined($defined_value = 'this value is defined',
                                $undefined_value = undef) {

  file { "undefined.test":
     path    => "$::local_tmp/undefined.test",
     content => template('test/undefined.test.erb')
  }
}
