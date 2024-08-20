#! /usr/bin/env bash
readonly PROJECT_KEY="duplication"

main() {
    source ./secrets.env
    if [[ "${#}" -eq 0 ]]; then
        sonar-scanner \
            -Dsonar.projectKey="${PROJECT_KEY}" \
            -Dsonar.sources=. \
            -Dsonar.host.url=http://localhost:9000 \
            -Dsonar.token="${SONAR_TOKEN}"
    elif [[ "${#}" -eq 1 && "${1}" == "branch" ]]; then
        sonar-scanner \
            -Dsonar.projectKey="${PROJECT_KEY}" \
            -Dsonar.sources=. \
            -Dsonar.host.url=http://localhost:9000 \
            -Dsonar.token="${SONAR_TOKEN}"
    fi
}

main "${@}"
