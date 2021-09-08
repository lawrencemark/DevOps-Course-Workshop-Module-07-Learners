pipeline {
    agent none
   
    stages {
        stage('Node') {
            agent {
               docker {image 'node:16-alpine3.11'}
            }
    }       steps { 
               dir('DotnetTemplate.Web/') {
                   sh 'npm install'
                   sh 'npm run build'
               }
    }
    }
}



