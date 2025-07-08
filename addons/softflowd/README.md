# Softflowd Home Assistant Add-on

[Softflowd](https://github.com/irino/softflowd) is a lightweight NetFlow v5/v9 exporter for monitoring IP traffic. This Home Assistant add-on makes it easy to run Softflowd on your Home Assistant OS system or supervised setup, forwarding network flow data to a NetFlow collector like ntopng, nfdump, or Graylog.

---

## 🚀 Features

- NetFlow v5 or v9 export support
- Configurable interface, collector address, and timeouts
- Host networking support
- Architecture-specific Docker images published to GHCR
- Compatible with amd64 and aarch64 (arm64)

---

## 🔧 Configuration

Example config.yaml:

```yaml
interface: eth0
collector: 192.168.1.100:2055
netflow_version: 9
timeout_maxlife: 300
timeout_tcp: 60
timeout_udp: 30
timeout_icmp: 30
timeout_general: 60
timeout_tcp_rst: 10
timeout_tcp_fin: 15
timeout_expint: 10
