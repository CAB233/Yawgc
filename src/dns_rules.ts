import { createDnsRule } from '@zhexin/typebox/dns';
import * as dns_servers from './dns_servers.ts';
import * as rule_set from './rule_set.ts';

export const clashModeDirect = createDnsRule({
    clash_mode: '直连',
    action: 'route',
    server: dns_servers.local.tag,
});

export const fakeip = createDnsRule({
    query_type: ['A', 'AAAA'],
    rewrite_ttl: 1,
    action: 'route',
    server: dns_servers.fakeip.tag,
});

export const rejectHTTPS = createDnsRule({
    query_type: 'HTTPS',
    action: 'predefined',
    rcode: 'NOERROR',
});

export const clientSubnet = createDnsRule({
    client_subnet: '114.141.191.81/32',
    action: 'route-options',
});

export const domestic = createDnsRule({
    rule_set: [
        rule_set.domainAppleCDN.tag,
        rule_set.domainMicrosoftCDN.tag,
        rule_set.domainGameDownload.tag,
        rule_set.domainAppleCN.tag,
        rule_set.domainDomestic.tag,
        rule_set.domainDirect.tag,
    ],
    action: 'route',
    server: dns_servers.local.tag,
});

export const clashModeEnhance = createDnsRule({
    rule_set: [
        rule_set.domainAppleCDN.tag,
        rule_set.domainMicrosoftCDN.tag,
        rule_set.domainGameDownload.tag,
        rule_set.domainAppleCN.tag,
        rule_set.domainDomestic.tag,
        rule_set.domainDirect.tag,
    ],
    clash_mode: '增强',
    server: dns_servers.ali.tag,
    strategy: 'ipv4_only',
});
