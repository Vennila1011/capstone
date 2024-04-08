pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './build.sh' 
                echo 'Built the iamge successfully'
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

