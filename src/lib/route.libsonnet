function(platform)
  local rules = import 'route/rules.libsonnet';
  local rule_set = import 'route/rule_set.libsonnet';
  local misc = (import 'route/misc.libsonnet')(platform);
  local s = std.mergePatch(rules, rule_set);
  std.mergePatch(s, misc)
