class { 'test::hiera::default': } ->

class { 'test::hiera::lookup': } ->

class { 'test::hiera::explicit':
  value => 'this value overrides all others'
}
