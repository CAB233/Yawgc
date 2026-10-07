{
  route: {
    rule_set: [
      {
        tag: [
          'domain/adguard-dns-filter',
          'domain/awavenue-ads-rule',
          'domain/geolocation-!cn',
          'domain/private',
        ],
        type: 'remote',
        url: 'https://testingcf.jsdelivr.net/gh/cab233/yawgrs@artifacts/{tag}.srs',
      },
      {
        tag: 'ip/cn',
        type: 'remote',
        url: 'https://testingcf.jsdelivr.net/gh/duakc/geoip@release/srs/cn.srs',
      },
      {
        tag: 'ip/telegram',
        type: 'remote',
        url: 'https://testingcf.jsdelivr.net/gh/Loyalsoldier/geoip@release/srs/telegram.srs',
      },
    ],
  },
}
