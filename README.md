# puppet-examples

Just a bunch of quick and dirty examples I have put together to make sure I understand the correct way of doing things in Puppet when I am developing code. The codebase is just intended to be a playground to verify some patterns as far as I understand them.

### Usage
~~~
./example <test_case>
~~~

### Current test cases

1. hiera_test - verifying the hierarchy of values - which value will be used when a developer defines it at several different levels:
  * Default value in class parameter
  * Hiera value injected by auto lookup
  * Explicit value provided by dev
2. template_test - Just verifying that an undef value only needs to be checked via a single if statement
3. hiera_duplication_test - Validate how to remove duplicate values using YAML and how to override common defaults if necessary
