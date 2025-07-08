#!/usr/bin/with-contenv bashio

IFACE=$(bashio::config 'interface')
COLLECTOR=$(bashio::config 'collector')
VERSION=$(bashio::config 'netflow_version')

# Timeouts
MAXLIFE=$(bashio::config 'timeout_maxlife')
TCP=$(bashio::config 'timeout_tcp')
UDP=$(bashio::config 'timeout_udp')
ICMP=$(bashio::config 'timeout_icmp')
GENERAL=$(bashio::config 'timeout_general')
TCP_RST=$(bashio::config 'timeout_tcp_rst')
TCP_FIN=$(bashio::config 'timeout_tcp_fin')
EXPINT=$(bashio::config 'timeout_expint')

bashio::log.info "Starting softflowd on ${IFACE}, sending to ${COLLECTOR}, version ${VERSION}"

exec softflowd -i "${IFACE}" -n "${COLLECTOR}" -v "${VERSION}" \
    -t maxlife="${MAXLIFE}" -t tcp="${TCP}" -t udp="${UDP}" \
    -t icmp="${ICMP}" -t general="${GENERAL}" -t tcp.rst="${TCP_RST}" \
    -t tcp.fin="${TCP_FIN}" -t expint="${EXPINT} -N"
