import { createDnsServer } from '@zhexin/typebox/dns';
import * as outbounds from './outbounds.ts';

export const fakeip = createDnsServer({
    tag: 'dns-fakeip',
    type: 'fakeip',
    inet4_range: '198.18.0.0/15',
    inet6_range: 'fc00::/18',
});

export const dhcp = createDnsServer({
    tag: 'dns-local',
    type: 'dhcp',
});

export const local = createDnsServer({
    tag: 'dns-local',
    type: 'local',
});

export const dnspod = createDnsServer({
    tag: 'dns-dnspod',
    type: 'https',
    server: '1.12.12.12',
});

export const google = createDnsServer({
    tag: 'dns-google',
    type: 'https',
    server: '8.8.8.8',
    detour: outbounds.selector.tag,
}, { assertExistOutbounds: [outbounds.selector.tag] });
