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
        exit "${?}"
    elif [[ "${#}" -eq 1 ]]; then
        if [[ "${1}" == "branch" ]]; then
            local current_branch_name="$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)"
            sonar-scanner \
                -Dsonar.projectKey="${PROJECT_KEY}" \
                -Dsonar.sources=. \
                -Dsonar.host.url=http://localhost:9000 \
                -Dsonar.branch.name="${current_branch_name}" \
                -Dsonar.token="${SONAR_TOKEN}"
            exit "${?}"
        elif [[ "${1}" == "pr" ]]; then
            local current_branch_name="$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)"
            sonar-scanner \
                -Dsonar.projectKey="${PROJECT_KEY}" \
                -Dsonar.sources=. \
                -Dsonar.host.url=http://localhost:9000 \
                -Dsonar.pullrequest.key="${current_branch_name}" \
                -Dsonar.pullrequest.branch="${current_branch_name}" \
                -Dsonar.pullrequest.base=main \
                -Dsonar.token="${SONAR_TOKEN}"
            exit "${?}"
        fi
    fi
}

main "${@}"
