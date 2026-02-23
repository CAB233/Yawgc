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
      auto_redirect: if (platform == 'linux-desktop') then true else false,
    } + (
      // https://github.com/SagerNet/sing-box/issues/3660
      // https://github.com/SagerNet/sing-box/issues/3760
      if (platform != 'android') then {} else {
        include_package: 'io.nekohasekai.sfa',
      }
    ),
  ] + (
    // for some apps like qBittorrent
    if (platform != 'linux-desktop') then [] else [
      {
        type: 'socks',
        tag: 'socks-in',
        listen: '127.0.0.1',
        listen_port: 7921,
      },
    ]
  ),
}
