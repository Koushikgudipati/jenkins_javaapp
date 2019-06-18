node{
   stage("SCM Checkout"){
      git 'https://github.com/Koushikgudipati/jenkins_javaapp'
      }
   stage('Maven build'){
      def mvnname= tool name: 'maven3', type: 'maven'
      sh "${mvnname}/bin/mvn package"
      }
}
