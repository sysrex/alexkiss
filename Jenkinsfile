pipeline {
    agent {
    label 'alexkiss.dev'
    }
    stages {
    stage ('build') {
        steps{
        sh 'hugo -D -F -b "http://10.1.1.77"'
        }
    }
    stage ('deploy') {
        steps{
        sh 'rsync -r "$WORKSPACE/public/" jenkins@alexkiss.dev:/var/www/alexkiss.dev/'
        }
    }

    }
}
