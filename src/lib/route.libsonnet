function(platform)
  local rules = (import 'route/rules.libsonnet')(platform);
  local rule_set = import 'route/rule_set.libsonnet';
  local misc = (import 'route/misc.libsonnet')(platform);
  std.mergePatch(std.mergePatch(rules, rule_set), misc)
