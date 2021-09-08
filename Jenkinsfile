pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dotnet build
                npm install
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
