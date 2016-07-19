def repo = "saved-searches"
def dockerUser = "discoenv"

node {
    stage "Build"
    git url: "https://github.com/cyverse-de/${repo}"

    sh 'git rev-parse HEAD > GIT_COMMIT'
    git_commit = readFile('GIT_COMMIT').trim()
    echo git_commit

    sh 'git rev-parse --abbrev-ref HEAD > GIT_BRANCH'
    git_branch = readFile('GIT_BRANCH').trim()
    echo git_branch

    dockerRepo = "${dockerUser}/${repo}:${git_branch}"

    sh "docker build --rm --build-arg git_commit=${git_commit} -t ${dockerRepo} ."


    stage "Test"
    sh "docker run --rm --entrypoint 'go' ${dockerRepo} test github.com/cyverse-de/${repo}"


    stage "Docker Push"
    sh "docker push ${dockerRepo}"
}
