node{
   stage("SCM Checkout"){
      git 'https://github.com/Koushikgudipati/jenkins_javaapp'
      }
   stage('Maven build'){
      withEnv(['JAVA_HOME=/opt/jdk1.8.0_211/']) {
     def mvnname= tool name: 'maven3', type: 'maven'
      sh "${mvnname}/bin/mvn package"
}
     
      }
}
