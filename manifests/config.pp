class config {


    service { "networking":
        ensure     => running,
        enable     => true,
        hasrestart => true
    }

    #set a static ip to a public bridged connection
    #enable config.vm.network :public_network
    # in the vagrant file

    /*
    augeas { "static_ip_bridged" :
        context => "/files/etc/network/interfaces/iface[last()]",
        changes => [
          "rm post-up",
          "rm #comment",
          "set method static",
          "set address IP",
          "set netmask MASK",
          "set network IP",
          "set gateway IP"
        ],
        notify  => Service['networking']
    }
    */
}