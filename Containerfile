# Step 1: Use the official Node.js image as a base
FROM node:14

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Step 4: Install dependencies
RUN yarn install

# Step 5: Copy the rest of your project files
COPY . .

# Step 6: Expose the port that Vue CLI will run on
EXPOSE 8080

# Step 7: Command to run the application
CMD ["yarn", "serve"]

