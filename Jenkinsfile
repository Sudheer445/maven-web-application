// Powered by Infostretch 

timestamps {

node () {

	stage ('Freestyle - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/Abhijit-ops/maven-web-application.git']]]) 
	}
	stage ('Freestyle - Build') {
 			// Maven build step
	withMaven(maven: 'Maven') { 
 			if(isUnix()) {
 				sh "mvn clean package deploy " 
			} else { 
 				bat "mvn clean package deploy " 
			} 
 		} 
	}
}
}