import { createOutbound } from '@zhexin/typebox/outbound';

export const direct = createOutbound({
    type: 'direct',
    tag: '直连',
});

export const selector = createOutbound({
    type: 'selector',
    tag: '默认节点',
    outbounds: ['默认节点（自动）'],
    default: '默认节点（自动）',
    interrupt_exist_connections: true,
}, { assertExistOutbounds: ['默认节点（自动）'] });

export const telegram_sg = createOutbound({
    type: 'selector',
    tag: 'Telegram_SG',
    outbounds: ['Telegram_SG（自动）'],
    default: 'Telegram_SG（自动）',
    interrupt_exist_connections: true,
}, { assertExistOutbounds: ['Telegram_SG（自动）'] });

export const telegram_eu = createOutbound({
    type: 'selector',
    tag: 'Telegram_EU',
    outbounds: ['Telegram_EU（自动）'],
    default: 'Telegram_EU（自动）',
    interrupt_exist_connections: true,
}, { assertExistOutbounds: ['Telegram_EU（自动）'] });

export const telegram_us = createOutbound({
    type: 'selector',
    tag: 'Telegram_US',
    outbounds: ['Telegram_US（自动）'],
    default: 'Telegram_US（自动）',
    interrupt_exist_connections: true,
}, { assertExistOutbounds: ['Telegram_US（自动）'] });

export const selector_auto = createOutbound({
    type: 'urltest',
    tag: '默认节点（自动）',
    outbounds: [],
});

export const telegram_sg_auto = createOutbound({
    type: 'urltest',
    tag: 'Telegram_SG（自动）',
    outbounds: [],
});

export const telegram_eu_auto = createOutbound({
    type: 'urltest',
    tag: 'Telegram_EU（自动）',
    outbounds: [],
});

export const telegram_us_auto = createOutbound({
    type: 'urltest',
    tag: 'Telegram_US（自动）',
    outbounds: [],
});
