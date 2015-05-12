class test::file::replace {

  exec { "create file":
    command => "/bin/echo 'newly created file' > $::local_tmp/replace.test",
    creates => "$::local_tmp/replace.test"
  } ~>

  exec { "modify file permissions":
    command     => "/bin/chmod 0777 $::local_tmp/replace.test",
    refreshonly => true
  } ->

  file { "$::local_tmp/replace.test":
    content => 'This content should not be put in place but unfortunately the mode is changed',
    mode    => '0444',
    replace => false
  }
}
