pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }

    stages {
        stage('Build') {
            steps {
                apk add bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib

                sudo apt-get update; \
                sudo apt-get install -y apt-transport-https && \
                sudo apt-get update && \
                sudo apt-get install -y dotnet-sdk-5.0
                
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
