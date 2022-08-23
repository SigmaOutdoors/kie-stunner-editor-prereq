This build installs the dependencies needed to get you to this point

https://github.com/kiegroup/kie-tools under the Libraries heading on that page (that text has been taken from there to save you a click).

# Libraries
Stunner Editors
The stunner-editors package contains the BPMN, DMN, and SceSim Editors that are used in many applications of KIE Tools. After cloning the repo, start with a fresh build.

# These steps have been done in this Docker image

<ol>
  <li>pnpm bootstrap</li>
  <li>pnpm -F @kie-tools/stunner-editors... build:dev</li>
</ol>

# To  Build

## First Time Build
<ol>
  <li>docker build -t sigmaoutdoors/kie-stunner-editor-prereq .</li>
</ol>

## To Build and get latest KIE Source --no-cache
<ol> 
  <li>docker build --no-cache -t sigmaoutdoors/kie-stunner-editor-prereq .</li>
</ol>


# Run and Shell into Container
<ol>
  <li>docker build -t sigmaoutdoors/kie-stunner-editor-prereq .</li>
  <li>docker build --no-cache -t sigmaoutdoors/kie-stunner-editor-prereq .</li>
  <li>docker run --detach --name kie-stunner-editor sigmaoutdoors/kie-stunner-editor-prereq</li>
  <li>docker exec -it kie-stunner-editor  /bin/sh -l -o vi</li>
</ol>

 
