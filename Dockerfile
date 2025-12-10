FROM jenkins/jenkins:lts

# Installation des plugins indispensables
# configuration-as-code : pour lire ton YAML
# job-dsl : pour lire la section 'jobs' de ton YAML
# git : pour tes repos
RUN jenkins-plugin-cli --plugins configuration-as-code job-dsl git workflow-aggregator docker-workflow

USER jenkins