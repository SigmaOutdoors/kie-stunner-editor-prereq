echo "Successfully starting EntryPoint.sh."

####################################################################################
# Run pnpm
####################################################################################
#cd /etc/kie-tools-main
#echo "Successfully change to directory $PWD."

#echo "Successfully running pnpm stunner editor build"
#pnpm -F @kie-tools/stunner-editors... build:dev
#if [ $? -ne 0 ] ; then
#   echo "ERROR: Exiting executing pnpm stunner editor build."
#   exit 1
#fi
#echo "Successfully completed execution of pnpm stunner editor build."

####################################################################################
# Run a command that never terminates.
####################################################################################
echo "Successfully running a command that never terminates (tail -f /dev/null)."
tail -f /dev/null
