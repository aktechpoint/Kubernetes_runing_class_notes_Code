#!/bin/bash

# OpenShift Installation and Setup Script
# This script demonstrates key OpenShift operations

echo "===== OpenShift Setup Script ====="

# Login to OpenShift cluster
echo "Logging into OpenShift cluster..."
# oc login <cluster-url> -u <username> -p <password>

# Create a new project
echo "Creating new project..."
# oc new-project myapp-project

# Create resources from manifests
echo "Creating resources..."
# oc apply -f deployment.yml
# oc apply -f service.yml
# oc apply -f route.yml

# Scale deployment
echo "Scaling deployment..."
# oc scale deployment/myapp-deployment --replicas=5

# Create a route to expose service
echo "Creating route..."
# oc expose service/myapp-service --hostname=myapp.example.com

# View resources
echo "Viewing resources..."
# oc get pods
# oc get deployments
# oc get services
# oc get routes

# View logs
echo "Viewing logs..."
# oc logs -f deployment/myapp-deployment

# Port forwarding
echo "Port forwarding..."
# oc port-forward svc/myapp-service 8080:80

# Apply RBAC
echo "Applying RBAC..."
# oc adm policy add-role-to-user edit developer

# Create secret for private registry
echo "Creating registry secret..."
# oc create secret docker-registry myregistry \
#   --docker-server=myregistry.example.com \
#   --docker-username=user \
#   --docker-password=password

echo "===== Setup Complete ====="
