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
               sh 'npm run build'

               /* Linting and TypeScripts test*/

               sh 'npm t'
               sh 'npm run lint'

               }               
               }
        }
    
        stage('.Net') {
            agent {
               docker { image 'mcr.microsoft.com/dotnet/sdk:5.0'}
            }
            environment {
                DOTNET_CLI_HOME = '/tmp/dotnet_cli_home'
            }
            steps {
                sh 'dotnet build'

            /* dotNet test*/

                sh 'dotnet test'
                
            }
        }
    }
}
    





