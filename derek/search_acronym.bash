#!/bin/bash

# Only do something meaningful if at least 1 parameter is passed
if [[ ! -z $1 ]]
then
    # Set up the environment variables required to execute a search against the Lucene index of clues
    #APP_HOME=../derek
    #CLUES_INDEX_HOME=$APP_HOME/cwg_index
    #OTSYS_INDEX_HOME=$APP_HOME/otsys_index
    #WIKIP_INDEX_HOME=/data0/corpora/wikipedia_2013/index
    #ACR_INDEX_HOME=$APP_HOME/acronym_index
    #LIB=$APP_HOME/lib
    #CP=$LIB/lucene-core-4.6.0.jar:$LIB/lucene-analyzers-common-4.6.0.jar:$LIB/lucene-queryparser-4.6.0.jar:$LIB/json.jar:$APP_HOME/classes/

    # Execute the Java process that searches different clue repositories.
    #
    # System properties in the Java proces:
    # - clue_index_dir: The location of the Lucene index of crosswordgiant.com clues.
    # - clue_path_regex: A regex used to extract a word from a path.
    # - otsys_index_dir: The location of the Lucene index of Dr. Fill clues.
    # - wikip_index_dir: The location of the Lucene index of Wikipedia.
    #
    # Parameters to the Java process:
    # 1)   The max number of results to return (integer)
    # 2-*) The clue to search for, consisting of >=1 words
    java -Xmx512m -cp $CP -Dclue_path_regex="../components/acronym_DB/acronymsandslang_corpus/(.+).txt" -Dacronym_index_dir=/home/cs4701/Project3/source_code/derek/acronym_index edu.umich.si.si561.SearchDriver $@
fi
