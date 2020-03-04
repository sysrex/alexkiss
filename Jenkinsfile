node {
    agent any
    def hugo

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        hugo = docker.build("sysrex/alexkiss")
    }

    stage('Test image') {
        hugo.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            hugo.push("${env.BUILD_NUMBER}")
            hugo.push("latest")
        }
    }
}
