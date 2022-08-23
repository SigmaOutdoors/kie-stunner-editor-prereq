echo "Successfully dotting /etc/profile.d/shared_profile.sh."

if [ -f /.dockerenv ] ; then
   if [ -f /.containerenv ] ; then
      . /.containerenv
   fi
   if [ "$DOCKER_IMAGE_NAME" != "" ] ; then
      export PS1="container:$DOCKER_IMAGE_NAME> "
   else
      export PS1="container:unnamed> "
   fi
fi

alias l='ls -asFC'
alias ll='ls -aslF'
alias mr='cd /root/.m2/repository/org/kie/kogito/stunner/editors/errai-cdi-client'
alias sb='cd /etc/kie-tools-main/packages/stunner-editors/kie-wb-common-stunner/kie-wb-common-stunner-sets/kie-wb-common-stunner-bpmn/kie-wb-common-stunner-bpmn-kogito-runtime'

if [ -f /etc/motd ] ; then
   cat /etc/motd
fi
