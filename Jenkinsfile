pipeline {
     agent { node { label 'master' } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                       sh 'make' 
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
