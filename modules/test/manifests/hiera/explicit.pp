class test::hiera::explicit ($value = 'this is overridden by lookup value which is overridden by explicity value') {
  notify { $value: }
}
