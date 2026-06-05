{
  route: {
    rule_set: [
      {
        tag: 'domain/ads',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-category-ads-all.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/china-list',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-geolocation-cn.srs',
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
        tag: 'domain/connectivity-check',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-connectivity-check.srs',
        download_detour: '直连',
      },
      {
        tag: 'ip/cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/Loyalsoldier/geoip@release/srs/cn.srs',
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
