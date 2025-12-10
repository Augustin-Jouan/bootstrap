FROM jenkins/jenkins:lts

# Installation des plugins indispensables
# configuration-as-code : pour lire ton YAML
# job-dsl : pour lire la section 'jobs' de ton YAML
# git : pour tes repos
RUN jenkins-plugin-cli --plugins configuration-as-code instance-identity job-dsl script-security structs

USER jenkins
FROM jenkins/jenkins:lts

# La variable pour sauter le wizard (réponse à la question "Try to find the environment variable...")
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Uniquement les plugins demandés dans le sujet
