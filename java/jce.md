# JCE

If your java program needs to use 256-bit AES encryption which is not supported by Java out of the box, you need to install Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files.

## What is JCE (and JCA)?

The Java Cryptography Extension (JCE) is an officially released Standard Extension to the Java Platform and part of Java Cryptography Architecture (JCA). JCE provides a framework and implementation for encryption, key generation and key agreement, and Message Authentication Code (MAC) algorithms. JCE supplements the Java platform, which already includes interfaces and implementations of message digests and digital signatures. Installation is specific to the version of the Java Platform being used.

## How to Install JCE?
1. Download JCE from Oracle, its version should match your installed JVM;
1. Unzip the downloaded zip; 
1. Copy local_policy.jar and US_export_policy.jar to the $JAVA_HOME/jre/lib/security. Note: these jars already exists there, just overwrite them.
