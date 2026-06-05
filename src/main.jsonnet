function(platform)
  local schema = import 'lib/schema.libsonnet';
  local log_config = import 'lib/log.libsonnet';
  local certificate_config = import 'lib/certificate.libsonnet';
  local experimental_config = import 'lib/experimental.libsonnet';
  local outbounds_config = import 'lib/outbounds.libsonnet';
  local inbounds_config = (import 'lib/inbounds.libsonnet')(platform);
  local dns_config = (import 'lib/dns.libsonnet')(platform);
  local route_config = (import 'lib/route.libsonnet')(platform);

  schema +
  log_config +
  certificate_config +
  experimental_config +
  outbounds_config +
  inbounds_config +
  dns_config +
  route_config
