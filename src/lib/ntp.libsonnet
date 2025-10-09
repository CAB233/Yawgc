function(platform)
  if (platform != 'windows') then {} else {
    ntp: {
      enabled: true,
      server: 'ntp.ntsc.ac.cn',
      server_port: 123,
      interval: '1440m',
      write_to_system: false,
    },
  }
