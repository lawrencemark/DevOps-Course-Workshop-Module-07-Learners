pipeline {
    agent none
       
    stages {
        stage('Node Build...') {
            agent {
                docker {image 'node:16-alpine3.11'} 
            }         
           steps { 
               dir('DotnetTemplate.Web') {
               sh 'npm install'
               }               
               }
        }
    
        stage('.Net') {
            agent {
               docker { image 'mcr.microsoft.com/dotnet/sdk:5.0'}
            }
            environment {
                DOTNET_CLI_HOME = 'tmp/'
            }
            steps {
                sh 'dotnet build'
                
            }
        }
    }
}
    





