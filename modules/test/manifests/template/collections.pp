class test::template::collections {
  $array_val = [ 1, 'string', 1.234 ]
  $hash_val = { 'key1' => 1, 'key2' => 'value2' }

  file { "array.hash.test":
    path    => "$::local_tmp/array.hash.test",
    content => template('test/array.hash.test.erb')
  }
}
