# Kubernetes Journey
- My journey to learning Kubernetes. The end goal is to deploy and maintain Kubernetes clusters at home - I plan on using old machines (2 laptops and a mini PC) at home; to repurpose these machines to servers and maintain them. To best use Kubernetes, I need to solidify my foundations on specific topics or concepts. These are listed below (they are not listed in any order).
- Tools and topics are what I believe I'll need to achieve my goal

## Topics
- Linux
   - [Linux Journey](https://labex.io/linuxjourney)
   - [Linux Snapshots](https://linuxvox.com/blog/how-to-take-snapshot-in-linux/)
   - [Linux Environments](https://linuxvox.com/linux-tutorial/what-is-linux/#server-environment)
   - [Linux Shells](https://linuxvox.com/linux-tutorial/best-shell-for-linux/)
- Docker
  - [Dockers for Beginnners](https://github.com/groda/big_data/blob/master/docker_for_beginners.md) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Docker-for-Beginners-(Big-Data))
  - [Docker Docs](https://docs.docker.com/get-started/)
     - [Docker Images](https://docs.docker.com/get-started/docker-concepts/building-images/understanding-image-layers/) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Docker-Images)
     - [Dockerfile](https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Dockerfile)
- Networking 
  - [Networking Essentials](https://www.youtube.com/watch?v=SHkbPm1Wrno) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Networking-Essential-Notes)
  - [Kubernetes Networking](https://www.youtube.com/watch?v=J8jAzqbXxjE) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Kubernetes-Networking)
     - [CNCF](https://www.youtube.com/watch?v=Mj04QOqAaJ8)
     - [Mischa van den Burg ](https://www.youtube.com/watch?v=J8jAzqbXxjE)
- Kubernetes
  - [Kubernetes Tutorial](https://kubernetes.io/docs/tutorials/)
  - [Kubernetes Beginner](https://www.youtube.com/watch?v=MTHGoGUFpvE) - [Notes](https://github.com/25Ericcheong/kubernetes-journey/wiki/Kubernetes-Beginners-Video)
- Infrastructure as Code (IaC)
  - [Terraform for Beginners](https://github.com/groda/big_data/blob/master/terraform_for_beginners.md)

## Tools
- K3s
- ArgoCD
- Let's Encrypt
- Terraform
- Prometheus
- Grafana
- Ansible
- Tailscale
- OPNsense

## Other Journeys
- [An over-engineered Home Lab with Docker and Kubernetes](https://fernandocejas.com/blog/engineering/2023-01-06-over-engineered-home-lab-docker-kubernetes/)
- [Kubernetes Homelab Series](https://blog.devops.dev/kubernetes-homelab-series-part-1-how-i-built-my-kubernetes-cluster-from-scratch-ce809aa1bdc1)

## Kubernetes on Proxmox or Bare Metal?
- [Bare Metal or VMs - On Prem Kubernetes](https://www.reddit.com/r/kubernetes/comments/1ibumku/bare_metal_or_vms_on_prem_kubernetes/) - 01/2025
  - Less complexity with bare but flexible with VMs
- [Proxmox vs Kubernetes for cluster](https://www.reddit.com/r/homelab/comments/1faqgs4/proxmox_vs_kubernetes_for_cluster/) - 01/2025
  - Proxmox with a Kubernetes cluster. Can have fail over redundancy for the cluster in a cluster
  - Proxmox on the hosts. Create a virtual machine on each host, install Kubernetes (I suggest rancher), use as needed
  - Proxmox then terraform to create your k8s cluster on top. Everything is ephemeral except your K8s persistent volumes (served via network storage from a NAS VM)
- [K8s on Proxmox or Bare Metal to prioritize learning and automation?](https://www.reddit.com/r/kubernetes/comments/1p9ck9w/k8s_on_proxmox_or_bare_metal_to_prioritize/) - 11/2025
  - Can "simulate" what cloud providers do in the background, i.e tearing down/spinning up VMs that run K8s clusters, other services, etc.
  - Bare metal - don't need a hypervisor running. Only K8s
- [Baremetal or Proxmox](https://www.reddit.com/r/kubernetes/comments/1m8unku/baremetal_or_proxmox/) - 06/2025
  - Do you have three or more computers? Talos.
  - Do you have only one or two computers? Proxmox and then use Cluster API to provision your clusters.
  - Proxmox features: snapshots, zfs, ceph, backup
- [Not sure whether to use Promox or baremetal](https://www.reddit.com/r/homelab/comments/1feefrv/not_sure_whether_to_use_proxmox_or_go_bare_metal/) - 01/2025
  - Proxmox. [Cluster with shared storage](https://www.starwindsoftware.com/resource-library/starwind-virtual-san-vsan-configuration-guide-for-proxmox-vsan-deployed-as-a-controller-virtual-machine-cvm/)
  - Ubuntu on bare metal. Need a VM, use Ansible to spin up a KVM instance. Data sits in ZFS mirrors so it makes it really easy to do a complete rebuild without data loss. If you like using a UI, go for Proxmox
- [Why proxmox over kubernetes and vice versa?](https://www.reddit.com/r/homelab/comments/1l63poj/why_proxmox_over_kubernetes_and_vice_versa/) - 05/2025
  - Different purposes. Use Proxmox to create VMs for K8s workloads.
  - K8s within Proxmox VMs. Embedded tools that are difficult to containerize cause need actual hardware. Setting up separate VMs for those is fantastic, and the K8s workloads get handled separately
- [VMs on Kubernetes. Does it make sense or are KubeVirt and friends missing the point? Real-World Opinions Please!](https://www.reddit.com/r/kubernetes/comments/1n1glwe/vms_on_kubernetes_does_it_make_sense_or_are/) - 08/2025
  - Consolidating separate orchestrators for containers and VMs to be handled instead by Kubernetes, leveraging the same CI/CD (DevOps) tooling
- [Proxmox/virtualization vs Kubernetes for Homelab?](https://www.reddit.com/r/homelab/comments/1iv97zg/proxmoxvirtualization_vs_kubernetes_for_homelab/) - 01/2025
  - Proxmox is simple for homelab. Full VM isolation, easy snapshots, native ZFS, and less overhead compared to managing a K8s cluster for everything
  - Proxmox for infra (VMs for services like NAS, Home Assistant, etc.) and Kubernetes inside it when I need containers at scale
  - Not everything runs in a container and need a test space.
- [Kubernetes cluster – on Proxmox or no?](https://www.reddit.com/r/homelab/comments/1pzv69d/kubernetes_cluster_on_proxmox_or_no/) - 01/2026
  - Why multi node cluster? It won't improve performance of the pods, but if you want to learn how to manage a larger K8 cluster then doing VMs is a great way to do that
  - Can create as many VMs as you can fit on the machines' hardware. The GPU can only be allocated to one VM, though
- [Bare Metal K8S vs VM-Based Clusters](https://www.reddit.com/r/kubernetes/comments/1b82w9n/bare_metal_k8s_vs_vmbased_clusters/) - 01/2024
  - Don’t underestimate the benefits of being able to split your bare metal machines up into smaller nodes
  - Containers do not provide anywhere near the isolation level VMs do
  - The real summary boils down to how you want to divide your resources and separate your management concerns
