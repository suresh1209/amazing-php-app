# Dockerizing amazing-php-app
Used Multi-Stage Docker Build for the app to ship only what's required
in the production.

## To run locally:
Pull the app image from registry
```
docker pull suresh1209/amazing-php-app:1.0
```
Run the app image
```
docker run -p 8000:8000 -it -d suresh1209/amazing-php-app:1.0
```

## To run locally for development purposes:

Build the image.
```
docker build -t app:1.0 .
```

```
docker run -p 8000:8000 -it -d app:1.0
```

Check the url:
```
localhost:8000
```

## To deploy app to production.

Clone the amazing-php-setup repo
```
git clone https://github.com/suresh1209/amazing-php-setup
```
Set up the infrastructure following the Readme and run shell script to deploy
```
sh deploy.sh
```
