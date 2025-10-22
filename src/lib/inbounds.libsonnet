function(platform) {
  inbounds: [
    {
      tag: 'tun-in',
      type: 'tun',
      interface_name: 'sing-tun',
      stack: 'mixed',
      auto_route: true,
      address: [
        '172.19.0.1/30',
        'fdfe:dcba:9876::1/126',
      ],
      strict_route: if (platform != 'linux-desktop') then true else false,
    } + (
      if (platform != 'linux-desktop') then {} else {
        auto_redirect: true,

        // Waiting for `ip_is_private`
        // https://github.com/SagerNet/sing-box/issues/2858
        route_exclude_address_set: [
          'geoip-cn',
        ],
      }
    ),
  ],
}
