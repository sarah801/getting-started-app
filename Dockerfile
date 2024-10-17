# Use an official Node.js image from the Docker Hub
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
ENTRYPOINT ["node"]
CMD ["src/index.js"]
EXPOSE 3000



"""
This function calculates the factorial of a given non-negative integer n.
It uses a recursive approach where the base case is n == 0, which returns 1.
For any other value of n, the function returns n multiplied by the factorial of n-1.

Parameters:
n (int): A non-negative integer whose factorial is to be calculated.

Returns:
int: The factorial of the given integer n.

Raises:
ValueError: If n is a negative integer.
"""