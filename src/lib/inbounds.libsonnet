function(platform) {
  inbounds: [
    {
      tag: 'tun-in',
      type: 'tun',
      interface_name: 'sing-tun',
      stack: 'mixed',
      auto_route: true,
      auto_redirect: if (platform == 'linux-desktop') then true else false,
      address: [
        '172.19.0.1/30',
        'fdfe:dcba:9876::1/126',
      ],
      strict_route: if (platform == 'android' || platform == 'windows') then true else false,
    } + (
      if (platform != 'linux-desktop') then {} else {
        route_exclude_address_set: [
          'ip/domestic',
          'ip/china_ip',
          'ip/china_ip_ipv6',
          'ip/lan',
        ],
      }
    ),
  ],
}
