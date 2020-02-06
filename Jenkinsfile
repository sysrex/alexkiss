pipeline {
    agent any
    stages {
        stage ('build') {
            steps{
                sh 'hugo --config config.toml'
            }
        }
        stage ('deploy') {
            steps{
                sh 'rsync -r "$WORKSPACE/public/" jenkins@alexkiss.dev:/var/www/alexkiss.dev/'
            }
        }

    }
    post { 
        always { 
            cleanWs()
        }
    }
}
