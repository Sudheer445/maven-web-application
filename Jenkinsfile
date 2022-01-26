pipeline{
agent any
tools{
    maven'maven'
}
stages{
  stage('git checkout'){
    steps{
         git 'https://github.com/Sudheer445/maven-web-application.git'
    }
    }
    stage('sonar'){
    steps{
         sh 'mvn sonar:sonar'
    }
    }
       stage('build war'){
    steps{
         sh 'mvn clean package'
    }
    }
    stage('publish war'){
    steps{
         sh 'mvn deploy'
    }
    }
    stage('deploy to tomcat'){
    steps{
        sshagent(['sudheer-dev']) {
            
             sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@184.73.58.127:/opt/apache-tomcat-9.0.58/webapps/'
             

}
    }
    }
}
}
