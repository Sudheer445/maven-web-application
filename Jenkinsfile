// Powered by Infostretch 

timestamps {

node () {

	stage ('New - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bd13ab0f-aac4-460c-87f8-db1dcf13f5d0', url: 'https://github.com/Abhijit-ops/maven-web-application.git']]]) 
	}
	stage ('New - Build') {
 			// Maven build step
	withMaven(maven: 'maven 3.6.3') { 
 			if(isUnix()) {
 				sh "mvn clean package " 
			} else { 
 				bat "mvn clean package " 
			} 
 		} 
	}
}
}