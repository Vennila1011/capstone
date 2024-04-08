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
<<<<<<< HEAD
		sh 'docker stop mycontainer1 || true' 
                sh 'docker rm mycontainer1 || true'
=======
>>>>>>> dfe666b (Added jenkins file)
                sh './deploy.sh' 
                echo 'Deployed successfully'
            }
        }
    }
}

