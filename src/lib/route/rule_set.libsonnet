{
  route: {
    rule_set: [
      {
        tag: 'domain/reject',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/lyc8503/sing-box-rules@rule-set-geosite/geosite-category-ads-all.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/reject-no-drop',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/domainset/reject-no-drop.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/lyc8503/sing-box-rules@rule-set-geosite/geosite-geolocation-cn.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/!cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/lyc8503/sing-box-rules@rule-set-geosite/geosite-geolocation-!cn.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/private',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/lyc8503/sing-box-rules@rule-set-geosite/geosite-private.srs',
        download_detour: '直连',
      },
      {
        tag: 'domain/game-download',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/domainset/game-download.srs',
        download_detour: '直连',
      },
      {
        tag: 'ip/cn',
        type: 'remote',
        format: 'binary',
        url: 'https://testingcf.jsdelivr.net/gh/lyc8503/sing-box-rules@rule-set-geoip/geoip-cn.srs',
        download_detour: '直连',
      },
      {
        tag: 'ip/telegram',
        type: 'remote',
        format: 'binary',
        url: 'https://repo-eo.zuoye.win/ruleset/ip/telegram.srs',
        download_detour: '直连',
      },
    ],
  },
}
