pipeline {
    agent none
       
    stages {
        stage('Node Build...') {
            agent {docker {image 'node:16-alpine3.11'}          
           steps { 
               dir('/DotnetTemplate.Web') {
               sh 'npm install'
               }               
               }
        }
    }
    }
}




