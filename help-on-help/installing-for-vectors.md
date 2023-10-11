pip install InstructorEmbedding
pip install torch
pip install sentence_transformers


add this to foo.py:

```
from InstructorEmbedding import INSTRUCTOR
model = INSTRUCTOR('hkunlp/instructor-xl')
sentence = "3D ActionSLAM: wearable person tracking in multi-floor environments"
instruction = "Represent the Science title:"
embeddings = model.encode([[instruction,sentence]])
print(embeddings)
```

python foo.py

pip install featurebase

```
fb_client = featurebase.client(
	hostport="query.featurebase.com/v2",
	database="147b0d80-ce46-4400-af0e-f63b395dc1fc",
	apikey="791ec221-ec06-4494-9fce-1f9f78e614e3"
)
```

resp = fb_client.query(sql="SELECT * FROM footable;") # how it's used


First, we install and import featurebase’s python library.
12:51
Then we create a connection.
12:51
You’ll have to create an api key and use it instead of mine. Then you copy the db_id from the database page on Cloud.
12:52
Then the code creates the table.After that, we import instructor so we can generate the vector. The vector comes out of the model.encode() function, which is converted to a list.
12:52
We grab the first list element, which itself is a list of floats…the vector or the embedding if you will.
12:53
then we stuff it in a query…
12:53
and send it to insert.


import featurebase

fb_client = featurebase.client(
	hostport="query.featurebase.com/v2",
	database="147b0d80-ce46-4400-af0e-f63b395dc1fc",
	apikey="791ec221-ec06-4494-9fce-1f9f78e614e3"
)

(slothai) kord@bob SlothAI $ python fb_vector.py
load INSTRUCTOR_Transformer
max_seq_length  512
None



import featurebase

​

fb_client = featurebase.client(

	hostport="query.featurebase.com/v2",

	database="147b0d80-ce46-4400-af0e-f63b395dc1fc",

	apikey="791ec221-ec06-4494-9fce-1f9f78e614e3"

)

​

# create the db

sql = "CREATE TABLE testdb (_id id, sentence string, embedding vector(768));"

fb_client.query(sql=sql)

​

from InstructorEmbedding import INSTRUCTOR

​

model = INSTRUCTOR('hkunlp/instructor-xl')

sentence = "3D ActionSLAM: wearable person tracking in multi-floor environments"

embeddings = model.encode([sentence]).tolist()

​

# get the single 768 element vector (list of floats)

embedding = embeddings[0] # get the first embedding

​

# insert into featurebase

sql = f"INSERT INTO testdb VALUES (1, '{sentence}', {embedding})"

result = fb_client.query(sql=sql)

​

print(result.error)


---conda

12:57
https://conda.io/projects/conda/en/latest/user-guide/install/linux.html

```sh
conda create -n vectors python=3.10

conda activate vectors
```
Then you’ll have to re-pip install those libs.

```
sql = f"INSERT INTO testdb VALUES (1, '{sentence}', {embedding})"
```
