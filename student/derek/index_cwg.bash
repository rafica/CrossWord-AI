#!/bin/bash

# Set environment variables to set up the environment for the Lucene indexer process
APP_HOME=/data0/projects/cross/derek
CLUES_HOME=/data0/corpora/crossword_corpus
INDEX_DIR=$APP_HOME/cwg_index
LIB=$APP_HOME/lib
CP=$LIB/weka.jar:$LIB/lucene-analyzers-common-4.6.0.jar:$LIB/lucene-core-4.6.0.jar:$LIB/lucene-demo-4.6.0.jar:$APP_HOME/classes

# Create a Lucene index of clues
java -cp $CP edu.umich.si.si561.CWGIndexer -docs $CLUES_HOME -index $INDEX_DIR
