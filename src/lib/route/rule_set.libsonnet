{
  route: {
    rule_set: [
      {
        tag: 'domain/ads',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-category-ads-all.srs',
      },
      {
        tag: 'domain/china-list',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-geolocation-cn.srs',
      },
      {
        tag: 'domain/geolocation-!cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-geolocation-!cn.srs',
      },
      {
        tag: 'domain/private',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-private.srs',
      },
      {
        tag: 'domain/connectivity-check',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@release/geosite-connectivity-check.srs',
      },
      {
        tag: 'ip/cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/Loyalsoldier/geoip@release/srs/cn.srs',
      },
      {
        tag: 'ip/telegram',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/Loyalsoldier/geoip@release/srs/telegram.srs',
      },
    ],
  },
}
