{
  experimental: {
    cache_file: {
      enabled: true,
      store_fakeip: true,
      store_rdrc: true,
    },
    clash_api: {
      external_controller: '127.0.0.1:9090',
      external_ui: 'ui',
      external_ui_download_url: 'https://github.com/Zephyruso/zashboard/releases/latest/download/dist-no-fonts.zip',
      secret: '114514',
      default_mode: '规则',
      access_control_allow_origin: 'https://board.zash.run.place',
      access_control_allow_private_network: true,
    },
  },
}
