pipeline {
    agent any
    tools {
        maven 'apache-maven-3.6.3'
    }
    stages {
        stage('build') {
            steps {
                script {
                    sh """
                        mvn clean install -f pom.xml
                    """
                }
                archiveArtifacts artifacts: "target/*", defaultExcludes: false
            }
        }
        stage('test') {
            steps {
                script {
                    sh """
                        mvn test
                    """
                }
            }
        }
        stage('deploy') {
            steps {
                script {
                    sh """
                        chmod +x deploy.sh
                        sh deploy.sh
                    """
                }
            }
        }
    }
}
