#!/bin/bash

# Set environment variables to set up the environment for the Lucene indexer process
#APP_HOME=/data0/projects/cross/derek
#CLUES_HOME=/data0/projects/cross/components/acronym_DB/lucene_acronym_corpus
CLUES_HOME=/data0/projects/cross/components/acronym_DB/acronymsandslang_corpus
INDEX_DIR=$APP_HOME/acronym_index
LIB=lib
CP=$LIB/weka.jar:$LIB/lucene-analyzers-common-4.6.0.jar:$LIB/lucene-core-4.6.0.jar:$LIB/lucene-demo-4.6.0.jar:$APP_HOME/classes

# Create a Lucene index of clues
java -cp $CP edu.umich.si.si561.ACRIndexer -docs $CLUES_HOME -index $INDEX_DIR
