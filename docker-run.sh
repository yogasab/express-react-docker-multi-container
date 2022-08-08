docker run --name mongodb --network goals-net --publish 27018:27017 --volume data:/data/db --rm  -d mongo

docker build -t yogasab/node-backend-goals .
docker run --name node-backend-goals --rm -d --network goals-net -p 80:80 yogasab/node-backend-goals
docker run --name node-backend-goals -e ENV=dev -v C:\Users\basko\OneDrive\Documents\Program\Program\Javascript\Node\express-react-docker-multi-container\backend:/app -v logs:/app/logs -v /app/node_modules --rm -d --network goals-net -p 80:80 yogasab/node-backend-goals

docker build -t yogasab/react-frontend-goals .
docker run --name react-frontend-goals -it --rm --network goals-net -p 3000:3000 yogasab/react-frontend-goals
docker run --name react-frontend-goals -v C:\Users\basko\OneDrive\Documents\Program\Program\Javascript\Node\express-react-docker-multi-container\frontend\src:/app/src -it --rm --network goals-net -p 3000:3000 yogasab/react-frontend-goals