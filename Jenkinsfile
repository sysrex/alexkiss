pipeline {
    agent any
    stages {
        stage ('build') {
                steps{
                sh 'hugo build'
                }
        }
        stage ('deploy') {
                steps{
                sh 'rsync -r "$WORKSPACE/public/" jenkins@alexkiss.dev:/var/www/alexkiss.dev/'
                }
        }

    }
}
