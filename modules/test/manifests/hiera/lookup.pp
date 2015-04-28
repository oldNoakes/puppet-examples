class test::hiera::lookup ($value = 'this is overridden by lookup value') {
  notify { $value: }
}
