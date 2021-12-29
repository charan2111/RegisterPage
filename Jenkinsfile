pipeline {
    agent any
    tools {
         maven 'maven3'
    }
    stages{
        stage('Build'){
            steps{
                  sh script: 'mvn clean package'
                }
        }
        stage('Upload War To Nexus'){
            steps{
                
    nexusArtifactUploader artifacts: [
                [
                    artifactId: 'torryharris', 
                    classifier: '', 
                    file: '/var/lib/jenkins/jobs/project/config.xml', 
                    type: 'war'
                ]
    ],
        credentialsId: '', 
        groupId: 'torryharris', 
        nexusUrl: '18.191.52.188:8081', 
        nexusVersion: 'nexus3', 
        protocol: 'http', 
        repository: 'maven-snapshots', 
        version: '1.0-SNAPSHOT'
}
        }
    }
}
