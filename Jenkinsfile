pipeline {
    agent {
               docker {image 'node:16-alpine3.11'}
    }
   
    stages {
        stage('Node Build...') {          
           steps { 
               dir('/DotnetTemplate.Web') {
               sh 'npm install'
               }               
               }
        }
    }
    }





