#! /usr/bin/env bash

main() {
    if [[ "${#}" -eq 0 ]]; then
        sonar-scanner \
            -Dsonar.projectKey=no-ruby-duplication-detected \
            -Dsonar.sources=. \
            -Dsonar.host.url=http://localhost:9000 \
            -Dsonar.token=sqp_99f5f559de400ee6070fc785715b1315416990c8
    elif [[ "${#}" -eq 1 && "${1}" == "branch" ]]; then
        sonar-scanner \
            -Dsonar.projectKey=no-ruby-duplication-detected \
            -Dsonar.sources=. \
            -Dsonar.host.url=http://localhost:9000 \
            -Dsonar.token=sqp_99f5f559de400ee6070fc785715b1315416990c8
    fi
}

main "${@}"
