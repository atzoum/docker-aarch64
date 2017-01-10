#!groovy
node {
    git url: 'https://github.com/atzoum/docker-aarch64.git'
    
    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS']]) {
        withEnv(["PATH+DOCKER=/var/jenkins_home/docker-1.12.5","DOCKER_HOST=tcp://${DOCKER_HOSTNAME}:2375"]) {
            
            echo "building aarch64-base-jdk"
            sh """
                docker build -t ${DOCKER_USER}/aarch64-base-jdk debian-jdk/ && \
                docker login -u="$DOCKER_USER" -p="$DOCKER_PASS" && \
                docker push ${DOCKER_USER}/aarch64-base-jdk
            """
            echo "building aarch64-nexus3"
            sh """
                docker build -t ${DOCKER_USER}/aarch64-nexus3 centos-nexus3/ && \
                docker login -u="$DOCKER_USER" -p="$DOCKER_PASS" && \
                docker push ${DOCKER_USER}/aarch64-nexus3
            """
        }
    }
}
