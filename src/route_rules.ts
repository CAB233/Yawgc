import { createRule } from '@zhexin/typebox/route';
import * as rule_set from './rule_set.ts';
import * as outbounds from './outbounds.ts';

export const clashModeDirect = createRule({
    clash_mode: '直连',
    outbound: outbounds.direct.tag,
}, { assertExistOutbounds: [outbounds.direct.tag] });

export const sniff = createRule({
    rule_set: [
        rule_set.ipTelegramEU.tag,
        rule_set.ipTelegramEU.tag,
        rule_set.ipTelegramUS.tag,
    ],
    invert: true,
    action: 'sniff',
    sniffer: ['dns', 'http', 'tls', 'quic'],
});

export const hijackDNS = createRule({
    port: 53,
    protocol: 'dns',
    action: 'hijack-dns',
});

export const resolve = createRule({
    action: 'resolve',
});

export const rejectDomain = createRule({
    rule_set: [
        rule_set.domainReject.tag,
        rule_set.domainRejectExtra.tag,
    ],
    action: 'reject',
});

export const rejectDomainNoDrop = createRule({
    rule_set: rule_set.domainRejectNoDrop.tag,
    action: 'reject',
    no_drop: true,
});

export const directDomain = createRule({
    rule_set: [
        rule_set.domainAppleCDN.tag,
        rule_set.domainMicrosoftCDN.tag,
        rule_set.domainGameDownload.tag,
        rule_set.domainAppleCN.tag,
        rule_set.domainDomestic.tag,
        rule_set.domainDirect.tag,
    ],
    outbound: outbounds.direct.tag,
});

export const proxyDomain = createRule({
    rule_set: [
        rule_set.domainCDN.tag,
        rule_set.domainTelegram.tag,
        rule_set.domainMicrosoft.tag,
        rule_set.domainDownload.tag,
        rule_set.domainGlobal.tag,
    ],
    outbound: outbounds.selector.tag,
});

export const rejectIP = createRule({
    rule_set: rule_set.ipReject.tag,
    action: 'reject',
}, { assertExistRuleSet: [rule_set.ipReject.tag] });

export const directIP = createRule({
    rule_set: [
        rule_set.ipDomestic.tag,
        rule_set.ipChinaIP.tag,
        rule_set.ipChinaIPIPv6.tag,
    ],
    outbound: outbounds.direct.tag,
});

export const directPrivateIP = createRule({
    ip_is_private: true,
    outbound: outbounds.direct.tag,
});

export const proxyTelegramIPSG = createRule({
    rule_set: rule_set.ipTelegramSG.tag,
    outbound: outbounds.telegram_sg.tag,
});

export const proxyTelegramIPEU = createRule({
    rule_set: rule_set.ipTelegramEU.tag,
    outbound: outbounds.telegram_eu.tag,
});

export const proxyTelegramIPUS = createRule({
    rule_set: rule_set.ipTelegramUS.tag,
    outbound: outbounds.telegram_us.tag,
});
