# OpenShift_running_class_notes_Code

This is a comprehensive guide to OpenShift with practical examples and manifests.

## Folder Structure

- **day-1 OpenShift-component-workernod**: Core OpenShift components and worker node concepts
- **day-1Installation-script**: Installation scripts for OpenShift
- **day-2 OpenShift-services**: OpenShift Services (ClusterIP, NodePort, LoadBalancer)
- **day-3 Horizontal-scaling**: Horizontal Pod Autoscaler (HPA) and scaling
- **day-3project**: OpenShift Projects (equivalent to Kubernetes Namespaces)
- **day-4Route**: OpenShift Routes (replacement for Kubernetes Ingress)
- **day-5 java-angularporject-jenkins-docker-openshift-argocd**: Full stack deployment with Jenkins and ArgoCD
- **day-5 private_image_deployment**: Deploying with private container images
- **day-6 depy_stragy**: Deployment strategies (Blue-Green, Canary, Rolling Update, Recreate)
- **day-7 Schedules**: Advanced scheduling with DaemonSets, node selectors, affinity, and taints/tolerations
- **Argocd**: ArgoCD configurations for GitOps with OpenShift

## Key Differences: Kubernetes to OpenShift

### Ingress → Route
- Kubernetes uses `Ingress` resources; OpenShift uses `Route` resources
- Routes provide a simpler way to expose services with DNS

### Namespace → Project
- Kubernetes uses `Namespace`; OpenShift uses `Project` (which is a wrapper around Namespace with additional features)
- Projects include RBAC, resource quotas, and network policies by default

### Deployment Configurations
- OpenShift supports both `Deployment` and `DeploymentConfig`
- `DeploymentConfig` is OpenShift-native and provides additional features like hooks

### Security
- OpenShift has built-in `SecurityContextConstraints` (SCC) for pod security
- Ensure your pods follow the appropriate SCC policy

### Build Configurations
- OpenShift includes `BuildConfig` for building images from source code
- Integrated container registry for storing built images

## Quick Start Commands

```bash
# Login to OpenShift
oc login <cluster-url> -u <username> -p <password>

# Create a project
oc new-project <project-name>

# Apply manifests
oc apply -f <manifest-file>

# View resources
oc get pods
oc get deployments
oc get routes

# Scale a deployment
oc scale deployment/<name> --replicas=3

# Create a route
oc expose service <service-name>
```

## Notes

All manifests have been converted from Kubernetes to OpenShift format while maintaining functionality and intent.
