Document Library dashlet for Alfresco Share
======================================

Author: Mittal Patoliya

Custom Site Dashlet which shows the list of documents which are uploaded in the document library of particular site

Installation
------------

The add-on has been developed to install on top of an existing Alfresco 4.0 installation.

An Ant build script is provided to build a JAR file containing the 
custom files, which can then be installed into the 'tomcat/shared/lib' folder 
of your Alfresco installation.

To build the JAR file, run the following command from the base project 
directory.

    ant clean dist-jar

The command should build a JAR file named "document-library-dashlet.jar"
in the 'build/dist' directory within your project.

For Deployment in Local Tomcat instance use target hotcopy-tomcat-jar task. 
You will need to edit the tomcat.home property in Ant.

    ant -Dtomcat.home=C:/Alfresco/tomcat clean hotcopy-tomcat-jar
    
Once you have run this you will need to restart Tomcat so that the classpath 
resources in the JAR file are picked up.

Using the dashlet
-----------------

1)Log in to Alfresco Share 
2)Create test site upload some document in document liberary.
3)Go to customize dashboard and click on add dashlet.
4)You will see the DocumentLiberary List Dashlet in the list add it.
5)You will be able to see the new dashlet.