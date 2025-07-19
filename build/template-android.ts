import path from 'node:path';

import { createTypebox } from '@zhexin/typebox';

import { PUBLIC_DIR } from './constants/dir.ts';

import { log } from '../src/log.ts';
import { certificate } from '../src/certificate.ts';
import { experimental } from '../src/experimental.ts';
import * as dns_servers from '../src/dns_servers.ts';
import * as dns_rules from '../src/dns_rules.ts';
import * as route_rules from '../src/route_rules.ts';
import * as rule_set from '../src/rule_set.ts';
import * as inbounds from '../src/inbounds.ts';
import * as outbounds from '../src/outbounds.ts';

const OUTPUT_FILE = path.join(PUBLIC_DIR, './template-android.json');

export const androidTemplateConfig = createTypebox({
    log: log,
    certificate: certificate,
    experimental: experimental,
    dns: {
        servers: [
            dns_servers.google,
            dns_servers.dnspod,
            dns_servers.local,
            dns_servers.fakeip,
        ],
        rules: [
            dns_rules.clashModeDirect,
            dns_rules.rejectHTTPS,
            dns_rules.domestic,
            dns_rules.clientSubnet,
            dns_rules.fakeip,
        ],
        final: dns_servers.google.tag,
        independent_cache: true,
    },
    route: {
        rules: [
            route_rules.clashModeDirect,
            route_rules.sniff,
            route_rules.hijackDNS,
            route_rules.rejectDomain,
            route_rules.rejectDomainNoDrop,
            route_rules.directDomain,
            route_rules.proxyDomain,
            route_rules.resolve,
            route_rules.rejectIP,
            route_rules.directIP,
            route_rules.directPrivateIP,
            route_rules.proxyTelegramIPSG,
            route_rules.proxyTelegramIPEU,
            route_rules.proxyTelegramIPUS,
        ],
        rule_set: [
            rule_set.domainReject,
            rule_set.domainRejectExtra,
            rule_set.domainRejectNoDrop,
            rule_set.domainCDN,
            rule_set.domainTelegram,
            rule_set.domainMicrosoftCDN,
            rule_set.domainAppleCDN,
            rule_set.domainGameDownload,
            rule_set.domainDownload,
            rule_set.domainAppleCN,
            rule_set.domainMicrosoft,
            rule_set.domainGlobal,
            rule_set.domainDomestic,
            rule_set.domainDirect,
            rule_set.ipReject,
            rule_set.ipTelegramSG,
            rule_set.ipTelegramEU,
            rule_set.ipTelegramUS,
            rule_set.ipDomestic,
            rule_set.ipChinaIP,
            rule_set.ipChinaIPIPv6,
        ],
        final: outbounds.selector.tag,
        find_process: true,
        auto_detect_interface: true,
        default_domain_resolver: {
            'server': dns_servers.dnspod.tag,
            'strategy': 'ipv4_only',
        },
        // Android Only
        override_android_vpn: true,
        default_network_strategy: 'fallback',
    },
    inbounds: [inbounds.tun4Android],
    outbounds: [
        outbounds.direct,
        outbounds.selector,
        outbounds.selector_auto,
        outbounds.telegram_sg,
        outbounds.telegram_sg_auto,
        outbounds.telegram_eu,
        outbounds.telegram_eu_auto,
        outbounds.telegram_us,
        outbounds.telegram_us_auto,
    ],
});

await Deno.writeTextFile(
    OUTPUT_FILE,
    JSON.stringify(androidTemplateConfig, null, 2),
);
