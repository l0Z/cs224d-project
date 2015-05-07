# cs224d-project


TODO

5/3/15:
- DL word vectors (glove)
- get code to extract dep path between mentions
- generate micro datasets in addition to the 10k (maybe 100k, 1mil)
- write a recursive NN


Desc of Training data CSV:

 gloss                  | text     |           | extended | 
 dependencies_conll     | text     |           | extended | 
 words                  | text[]   |           | extended | 
 lemmas                 | text[]   |           | extended | 
 pos_tags               | text[]   |           | extended | 
 ner_tags               | text[]   |           | extended | 
 subject_id             | bigint   |           | plain    | 
 subject_entity         | text     |           | extended | 
 subject_link_score     | real     |           | plain    | 
 subject_ner            | text     |           | extended | 
 object_id              | bigint   |           | plain    | 
 object_entity          | text     |           | extended | 
 object_link_score      | real     |           | plain    | 
 object_ner             | text     |           | extended | 
 subject_begin          | smallint |           | plain    | 
 subject_end            | smallint |           | plain    | 
 object_begin           | smallint |           | plain    | 
 object_end             | smallint |           | plain    | 
 known_relations        | text[]   |           | extended | 
 incompatible_relations | text[]   |           | extended | 
 annotated_relation     | text     |           | extended | 


Desc of Test data CSV:

       Column       |   Type   | Modifiers | Storage  | Description 
--------------------+----------+-----------+----------+-------------
 gloss              | text     |           | extended | 
 dependencies_conll | text     |           | extended | 
 words              | text[]   |           | extended | 
 lemmas             | text[]   |           | extended | 
 pos_tags           | text[]   |           | extended | 
 ner_tags           | text[]   |           | extended | 
 subject_id         | bigint   |           | plain    | 
 subject_entity     | text     |           | extended | 
 subject_link_score | real     |           | plain    | 
 subject_ner        | text     |           | extended | 
 object_id          | bigint   |           | plain    | 
 object_entity      | text     |           | extended | 
 object_link_score  | real     |           | plain    | 
 object_ner         | text     |           | extended | 
 subject_begin      | smallint |           | plain    | 
 subject_end        | smallint |           | plain    | 
 object_begin       | smallint |           | plain    | 
 object_end         | smallint |           | plain    | 

