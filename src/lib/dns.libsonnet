function(platform)
  local servers = (import 'dns/servers.libsonnet')(platform);
  local rules = import 'dns/rules.libsonnet';
  local misc = import 'dns/misc.libsonnet';
  local s = std.mergePatch(servers, rules);
  std.mergePatch(s, misc)
