# Workflow

1. Bootstrap Completo

Create Project
     ↓
Create RBAC
     ↓
Create Secrets
     ↓
Create Pipeline
     ↓
Create Route
     ↓
Register monitoring

2. Deploy de aplicación desde pipeline

Build image
     ↓
Push image to registry
     ↓
Call AAP Job Template
     ↓
Deploy to OpenShift


3. Promoción entre ambientes (muy común)
Deploy DEV
    ↓
Run tests
    ↓
Approval
    ↓
Deploy QA
    ↓
Approval
    ↓
Deploy PROD

4.  Validacion antes del deploy

Validate image
     ↓
Security scan
     ↓
Policy validation
     ↓
Deploy




# Ejemplo sencillo


Deploy App
   ↓
Configure RBAC
   ↓
Create Route
   ↓
Run Smoke Tests
   ↓
Generate Deployment Report
