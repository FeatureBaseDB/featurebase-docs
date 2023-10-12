## Introduction

While we could try to do an example with a vector of say length 3, it really isn’t useful until you use a
real vector.

This is more or less why I started on SlothAI.

We create endpoints that allow the pipeline to do all the queries.

The user only needs to send us data they want encoded to vectors to transform the strings to the embeddings/vectors.

## Test data

DB ID -- 06a2fc19-f093-4f6e-8b88-cd7fd330bd96

API Keys
15308d18-95c5-4c86-8e03-5ed5e4b6c72b
a2992b10-eede-4734-a037-1423e866de8b

## Step 1 -- setup database and API key

* Login to Cloud and create a database > get the db ID
* Create API keys to the database.

## Step 2 -- Setup python library and files

* Install and import featurebase’s python library (this can take a while to complete)

```
pip install InstructorEmbedding
pip install torch
pip install sentence_transformers
```

* Run `nano foo.py` then add the following before saving

```py
from InstructorEmbedding import INSTRUCTOR
model = INSTRUCTOR('hkunlp/instructor-xl')
sentence = "3D ActionSLAM: wearable person tracking in multi-floor environments"
instruction = "Represent the Science title:"
embeddings = model.encode([[instruction,sentence]])
print(embeddings)
```

* Run `python3 foo.py` then let the system download and install the files (will take a while to complete)

## Step 3 -- Create fb_vector.py to create destination table

* Run `nano fb_vector.py` then add the following with the db ID and the API key

```py
fb_client = featurebase.client(

	hostport="query.featurebase.com/v2",

	database="DB-ID",

	apikey="API Key"

)

# create the db

sql = "CREATE TABLE testdb (_id id, sentence string, embedding vector(768));"

fb_client.query(sql=sql)

from InstructorEmbedding import INSTRUCTOR

model = INSTRUCTOR('hkunlp/instructor-xl')

sentence = "3D ActionSLAM: wearable person tracking in multi-floor environments"

embeddings = model.encode([sentence]).tolist()

# get the single 768 element vector (list of floats)

embedding = embeddings[0] # get the first embedding

# insert into featurebase

sql = f"INSERT INTO testdb VALUES (1, '{sentence}', {embedding})"

result = fb_client.query(sql=sql)

print(result.error)
```

* Run `python3 fb_vector.py` to connect to the db and create a destination table

## Step 3 -- Import instructor and generate the vector

Raw instructions follow:
* we import instructor so we can generate the vector.
* The vector comes out of the model.encode() function, which is converted to a list.
* We grab the first list element, which itself is a list of floats…the vector or the embedding if you will.
* then we stuff it in a query then send it to insert.

POSSIBLE query -- `resp = fb_client.query(sql="SELECT * FROM footable;")`

What’s happening here is that we take the sentence, a string, and put it in quotes in a SQL query.
The embedding, which is an array like [float, float, etc….] is then stuffed into the query.
If you print that sql variable, it will contain a long SQL INSERT with a very large vector in it.
