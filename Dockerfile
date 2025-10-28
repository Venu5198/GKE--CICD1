# Dockerfile
# Step 1: Use a lightweight Python image
FROM python:3.11-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy dependency files
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy app code
COPY . .

# Step 6: Expose the FastAPI port
EXPOSE 8000

# Step 7: Run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

