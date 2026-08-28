{
  services: [
    {
      type: 'api',
      listen: '127.0.0.1',
      listen_port: 9090,
      secret: '114514',
      access_control_allow_private_network: true,
      dashboard: {
        enabled: true,
      },
    },
  ],
}
