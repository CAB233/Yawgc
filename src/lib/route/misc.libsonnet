function(platform) {
  route: {
    final: '代理',
    find_process: true,
    auto_detect_interface: true,
    default_domain_resolver: {
      server: 'dns-ali',
      strategy: 'ipv4_only',
    },
  } + (
    if (platform != 'android') then {} else {
      override_android_vpn: true,
      default_network_strategy: 'fallback',
    }
  ),
}
