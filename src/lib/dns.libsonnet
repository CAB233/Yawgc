function(platform)
  local servers = (import 'dns/servers.libsonnet')(platform);
  local rules = import 'dns/rules.libsonnet';
  local misc = import 'dns/misc.libsonnet';
  std.mergePatch(std.mergePatch(servers, rules), misc)
