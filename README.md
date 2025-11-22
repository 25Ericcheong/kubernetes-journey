# Kubernetes Journey
My journey to learning Kubernetes. The end goal is to deploy and maintain Kubernetes clusters at home - I plan on using old machines at home; to repurpose these machines to servers and maintain them. To best use Kubernetes, I need to solidify my foundations on specific topics or concepts. These are listed below (they are not listed in any order).

## Topics
- Linux
   - [Linux Journey](https://labex.io/linuxjourney) 
- Docker
- Networking 
  - [Networking Essentials](https://www.youtube.com/watch?v=SHkbPm1Wrno)
     - Network, Transport & Application
     - IP
     - TCP (Stream, guaranteed, reliable & ordered but throughput & latency) & UDP (Lossly and is ok to lose packaets & can be out of order)
     - Request & Response
        - REST (Underfetch & slow APIs - page load slower) & GraphQL (For constant changes & lack of requirements)
        - gRPC is Protobufs & services (Serializations & deserializations eof binaries efficiently but hard to debug). Good for internal and optimize for performance
     - Server Sent Events (SSE)
        -  Connection severed and re-created
        -  Can have longer connection time and push events
     - WebSockets
        -  Resource hungry and expensive. Consider other solutions first.
        -  Exchange binary blobs.
        -  Connection have to keep alive. May be an issue for deployment.
     - WebRTC
        - Run over UDP. Collaborative editor.
        - Allow clients to connect with one and another or facilitate audio/video sharing.
      - Scaling
        - Vertical
        - Horizontal
           - Load balancing.
              - Load balancer can be on client side (less latency) but client need updates about server (good for internal microservice)
              - Dedicated load balancer. Between client and servers - makes health checks to server and allocate request traffic as needed.
              - Layer 4 (accept and make TCP connection; like it doesn't exist since all it does is make connection to server - used for stateful) or layer 7 (accept requests and send request to server. Connection may be different from client to load balancer and connection from load balancer to server) load balancer
      - Regionalization  
  - [Kubernetes Networking](https://www.youtube.com/watch?v=J8jAzqbXxjE)
- Kubernetes
