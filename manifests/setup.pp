class setup {

    # Install some default packages
    $default_packages = [ 'build-essential', 'vim', 'curl', 'git', 'subversion' ]
    package { $default_packages :
        ensure => present,
        require => Exec['apt-update'],
    }

    include project

    include project::composer
    include project::web
    include project::php5
    include project::pear
    include project::phing
    include project::sql
    include project::mongodb

    include project::mongodb

    include project::jenkins


}