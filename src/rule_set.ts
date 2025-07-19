import { createRuleSet } from '@zhexin/typebox/route';
import * as outbounds from '../src/outbounds.ts';

export const domainReject = createRuleSet({
    tag: 'domain/reject',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/reject.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainRejectExtra = createRuleSet({
    tag: 'domain/reject_extra',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/reject_extra.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainRejectNoDrop = createRuleSet({
    tag: 'domain/reject-no-drop',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/reject-no-drop.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainCDN = createRuleSet({
    tag: 'domain/cdn',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/cdn.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainTelegram = createRuleSet({
    tag: 'domain/telegram',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/telegram.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainMicrosoftCDN = createRuleSet({
    tag: 'domain/microsoft_cdn',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/microsoft_cdn.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainAppleCDN = createRuleSet({
    tag: 'domain/apple_cdn',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/apple_cdn.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainGameDownload = createRuleSet({
    tag: 'domain/game-download',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/game-download.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainDownload = createRuleSet({
    tag: 'domain/download',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/download.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainAppleCN = createRuleSet({
    tag: 'domain/apple_cn',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/apple_cn.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainMicrosoft = createRuleSet({
    tag: 'domain/microsoft',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/microsoft.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainGlobal = createRuleSet({
    tag: 'domain/global',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/global.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainDomestic = createRuleSet({
    tag: 'domain/domestic',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/domestic.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const domainDirect = createRuleSet({
    tag: 'domain/direct',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/domainset/direct.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipReject = createRuleSet({
    tag: 'ip/reject',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/reject.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipTelegramSG = createRuleSet({
    tag: 'ip/telegram_sg',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/telegram_sg.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipTelegramEU = createRuleSet({
    tag: 'ip/telegram_eu',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/telegram_eu.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipTelegramUS = createRuleSet({
    tag: 'ip/telegram_us',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/telegram_us.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipDomestic = createRuleSet({
    tag: 'ip/domestic',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/domestic.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipChinaIP = createRuleSet({
    tag: 'ip/china_ip',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/china_ip.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });

export const ipChinaIPIPv6 = createRuleSet({
    tag: 'ip/china_ip_ipv6',
    type: 'remote',
    format: 'binary',
    url: 'https://repo-eo.zuoye.win/ruleset/ip/china_ip_ipv6.srs',
    download_detour: outbounds.direct.tag,
}, { assertExistOutbound: [outbounds.direct.tag] });
