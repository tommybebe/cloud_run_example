PROJECT_ID="minwoo-lee"
FUNCTION_NAME="hello-world"

gcloud builds submit --tag gcr.io/$PROJECT_ID/$FUNCTION_NAME .

gcloud run deploy $FUNCTION_NAME\
          --project=$PROJECT_ID\
          --platform=managed\
          --region=us-central1\
          --image=gcr.io/$PROJECT_ID/$FUNCTION_NAME\
          --allow-unauthenticated


#gcloud builds submit --tag gcr.io/minwoo-lee/cloud-run-http .
#gcloud run deploy hello-world --project=minwoo-lee --platform=managed --region=us-central1 --image=gcr.io/minwoo-lee/hello-world --allow-unauthenticated