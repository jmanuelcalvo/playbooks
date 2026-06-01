i                                   Developer
                                       │
                                       │ Push Code
                                       ▼
                         ┌───────────────────────────┐
                         │        Azure DevOps       │
                         │           (CI)            │
                         │                           │
                         │  - Unit Tests             │
                         │  - Build Container        │
                         │  - Security Scan          │
                         └─────────────┬─────────────┘
                                       │
                                       │ Push Image
                                       ▼
                           ┌──────────────────────┐
                           │ Container Registry   │
                           │   (ACR / Quay)       │
                           └───────────┬──────────┘
                                       │
                                       ▼
                        ┌───────────────────────────┐
                        │        Terraform          │
                        │     Infrastructure IaC    │
                        │                           │
                        │ - OpenShift Cluster       │
                        │ - Networking              │
                        │ - Storage                 │
                        │ - Base Namespaces         │
                        └─────────────┬─────────────┘
                                      │
                                      ▼
                   ┌─────────────────────────────────────┐
                   │           ITSM Platform             │
                   │                                     │
                   │ - Change Request                    │
                   │ - Approval Workflow                 │
                   │ - Compliance Tracking               │
                   └─────────────┬───────────────────────┘
                                 │ Approved Change
                                 ▼
      ┌───────────────────────────────────────────────────────────┐
      │          Ansible Automation Platform (Orchestrator)       │
      │                                                           │
      │  Application Delivery                                     │
      │  - Deploy Application to OpenShift                        │
      │  - Configure RBAC                                         │
      │  - Create Routes / Ingress                                │
      │                                                           │
      │  Validation & Testing                                     │
      │  - Smoke Tests                                            │
      │  - Health Checks                                          │
      │                                                           │
      │  Platform Operations                                      │
      │  - Namespace bootstrap                                    │
      │  - Scaling workloads                                      │
      │  - Certificate automation                                 │
      │                                                           │
      │  Integrations                                             │
      │  - Update ITSM ticket                                     │
      │  - Notify Slack / Teams                                   │
      │  - Trigger Observability checks                           │
      │                                                           │
      │  Governance                                               │
      │  - Policy validation                                      │
      │  - Compliance checks                                      │
      │                                                           │
      └───────────────┬───────────────────────────────────────────┘
                      │
                      ▼
             ┌───────────────────────────────┐
             │         OpenShift             │
             │                               │
             │  Pods / Services              │
             │  Routes / Builds              │
             │  Running Applications         │
             └──────────────┬────────────────┘
                            │
                            ▼
                ┌─────────────────────────────┐
                │ Observability / Monitoring  │
                │ (Prometheus / Grafana etc.) │
                │                             │
                │ - Health metrics            │
                │ - Alerts                    │
                └─────────────────────────────┘
