class test::defaults::override {

  File {
    ensure => present,
    mode   => '0640'
  }

  file { "$::local_tmp/0640.file": }

  file { "$::local_tmp/overridden.file":
    mode => '0755'
  }

  # This file will default to the system default mode rather than the File type default defined above
  file { "$::local_tmp/undefine.override.file":
    mode => undef
  }
}
