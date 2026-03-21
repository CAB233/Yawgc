platforms := "android linux-desktop windows"

fmt:
    @jsonnetfmt -i src/main.jsonnet -i src/lib/*.libsonnet -i src/lib/*/*.libsonnet

build ENABLE_SNIFF="false":
    #!/usr/bin/env bash
    set -euo pipefail
    for i in {{ platforms }}; do
        echo "[INFO] Generating template-${i}.json ..."
        jsonnet \
            --output-file "public/template-${i}.json" \
            --tla-str "platform=${i}" \
            --ext-code "sniff={{ENABLE_SNIFF}}" \
            src/main.jsonnet
    done

format:
    #!/usr/bin/env bash
    set -euo pipefail
    for i in {{ platforms }}; do
        echo "[INFO] Formatting template-${i}.json"
        sing-box format -w -c "public/template-${i}.json"
    done

generate ENABLE_SNIFF="false": (build ENABLE_SNIFF) format
