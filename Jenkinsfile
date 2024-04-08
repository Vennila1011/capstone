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
		sh 'docker stop mycontainer1 || true' 
                sh 'docker rm mycontainer1 || true'
                sh './deploy.sh' 
                echo 'Deployed successfully'
            }
        }
    }
}

