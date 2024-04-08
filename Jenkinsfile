pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './build.sh' 
                echo 'Build is successful'
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy.sh' 
                echo 'Deployed successfully'
            }
        }
    }
}

