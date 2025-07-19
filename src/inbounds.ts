import { createInbound } from '@zhexin/typebox/inbound';

export const tun4Android = createInbound({
    tag: 'tun-in',
    type: 'tun',
    interface_name: 'sing-tun',
    stack: 'mixed',
    auto_route: true,
    strict_route: true,
    address: [
        '172.19.0.1/30',
        'fdfe:dcba:9876::1/126',
    ],
});

export const tun4Windows = createInbound({
    tag: 'tun-in',
    type: 'tun',
    interface_name: 'sing-tun',
    stack: 'mixed',
    auto_route: true,
    strict_route: true,
    address: [
        '172.19.0.1/30',
        'fdfe:dcba:9876::1/126',
    ],
});
