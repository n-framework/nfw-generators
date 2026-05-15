#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=packages/acore-scripts/src/logger.sh
source "${SCRIPT_DIR}/../../../packages/acore-scripts/src/logger.sh"

REPO_ROOT="$(cd "${SCRIPT_DIR}/../../.." && pwd)"
cd "$REPO_ROOT"

acore_log_section "🎨 Formatting YAML files with Prettier..."

mapfile -t yaml_files < <(fd -e yaml -e yml -t f . "$REPO_ROOT")
if [ ${#yaml_files[@]} -eq 0 ]; then
	acore_log_warning "No YAML files found."
	exit 0
fi

prettier --write --parser yaml "${yaml_files[@]}"

acore_log_success "✅ YAML formatting complete!"
