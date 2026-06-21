{
  route: {
    rule_set: [
      {
        tag: 'domain/ads',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release3/adguard-dns-filter.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/geolocation-!cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-geolocation-!cn.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/private',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-private.srs',
        download_detour: '直连',
      },
      {
        tag: 'ip/cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release2/china-ip.srs',
        download_detour: '直连',
      },
      {
        tag: 'ip/telegram',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/Loyalsoldier/geoip@release/srs/telegram.srs',
        download_detour: '直连',
      },
    ],
  },
}
