#openapi-generator-cli generate \
#    -i https://kur-hesapla-api.fatiharge.com/q/openapi \
#    -g dart-dio \
#    -o ../package/kur_hesapla_api_client \
#    --additional-properties=pubName=kur_hesapla_api

openapi-generator-cli generate \
    -i https://news-api.fatiharge.com/q/openapi \
    -g dart-dio \
    -o ../package/news_api \
    --additional-properties=pubName=news_api