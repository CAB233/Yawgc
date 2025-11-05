{
  route: {
    rule_set: [
      {
        tag: 'geosite-reject',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geosite-reject.srs',
        download_detour: '直连',
      },
      {
        tag: 'geosite-reject-no-drop',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geosite-reject-no-drop.srs',
        download_detour: '直连',
      },
      {
        tag: 'geosite-direct',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geosite-direct.srs',
        download_detour: '直连',
      },
      {
        tag: 'geosite-proxy',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geosite-proxy.srs',
        download_detour: '直连',
      },
      {
        tag: 'geosite-private',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geosite-private.srs',
        download_detour: '直连',
      },
      {
        tag: 'geoip-cn',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geoip-cn.srs',
        download_detour: '直连',
      },
      {
        tag: 'geoip-telegram',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/geoip-telegram.srs',
        download_detour: '直连',
      },
    ],
  },
}
