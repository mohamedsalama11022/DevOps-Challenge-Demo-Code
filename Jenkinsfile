pipeline 
{
    agent any
    stages {
        stage('run tests in docker container') {
            steps {
               sh "cd DevOps-Challenge-Demo-Code && docker build -t 'pytest' . && docker run --rm 'pytest' '/usr/src/app/tests/test.py'" 
            }
        }
        stage('docker-compose build & run') {
            steps {
                sh "cd DevOps-Challenge-Demo-Code && docker-compose build && docker-compose -p master_project up -d "
            }
        }
    }
}