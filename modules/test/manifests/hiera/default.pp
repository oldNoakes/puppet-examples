class test::hiera::default ($value = 'this is the default value') {
  notify { $value: }
}
