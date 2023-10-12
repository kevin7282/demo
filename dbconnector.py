
# Connecto postgres
import psycopg2
try:
    connection = psycopg2.connect(database="dvdrental",
                        host="192.168.5.5",
                        user="postgres",
                        password="myPassword",
                        port="5432")
    cursor = connection.cursor()
    sql_query = "select * from actor"

    cursor.execute(sql_query)
    print("Selecting rows from mobile table using cursor.fetchall")
    actor_records = cursor.fetchall()

    print("Print each row and it's columns values")
    for row in actor_records:
        print("Id = ", row[0], )
        print("Model = ", row[1])
        print("Price  = ", row[2], "\n")

except (Exception, psycopg2.Error) as error:
    print("Error while fetching data from PostgreSQL", error)

finally:
    if connection:
        cursor.close()
        connection.close()
        print("PostgreSQL connection is closed")

# Connect dynamodb via boto3
import boto3

dynamodb = boto3.client("dynamodb")

response = dynamodb.create_table(
  TableName="basicSongsTable",
  AttributeDefinitions=[
    {
      "AttributeName": "artist",
      "AttributeType": "S"
    },
    {
      "AttributeName": "song",
      "AttributeType": "S"
    }
  ],
  KeySchema=[
    {
      "AttributeName": "artist",
      "KeyType": "HASH"
    },
    {
      "AttributeName": "song",
      "KeyType": "RANGE"
    }
  ],
  ProvisionedThroughput={
    "ReadCapacityUnits": 1,
    "WriteCapacityUnits": 1
  }
)

print(response)

### Qurey data
import boto3
import json
from boto3.dynamodb.conditions import Key

TABLE_NAME = "basicSongsTable"

# Creating the DynamoDB Client
dynamodb_client = boto3.client('dynamodb', region_name="us-west-2")

# Creating the DynamoDB Table Resource
dynamodb = boto3.resource('dynamodb', region_name="us-west-2")
table = dynamodb.Table(TABLE_NAME)


artists = table.scan(AttributesToGet=['artist.'])


specific_artist = table.query(
  KeyConditionExpression=Key('artist').eq('Arturus Ardvarkian')
)

artists_object = json.dumps(artists, indent = 4) 
print(artists_object)

specific_artist = json.dumps(specific_artist, indent = 4) 
print(specific_artist)
