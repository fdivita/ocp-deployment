# ocp-openshiftdeployment
 The repository contains the scripts and configuration file used to deploy an OCP HA Cluster . 
 
 #OCP nodes
 The file hosts contains the list of nodes . The list comprises six nodes for pods deployment, 3 infrastructure nodes, 
 1 loadbalancer, 3 master nodes. The etcd server is deployed in the masters. The node6 works as nfs server as well
 
 [masters]
master1.example.com
master2.example.com
master3.example.com

[etcd]
master1.example.com
master2.example.com
master3.example.com

[nodes]
#nodes where pods will be deployed
node1.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
node2.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
node3.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
node4.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
node5.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
node6.example.com openshift_node_labels="{'logging':'true','region':'primary','env':'app','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"

#master nodes 
master1.example.com openshift_node_labels="{'logging':'true','region': 'master','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
master2.example.com openshift_node_labels="{'logging':'true','region': 'master','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
master3.example.com openshift_node_labels="{'logging':'true','region': 'master','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"

#infra nodes
infranode1.example.com openshift_node_labels="{'logging':'true','region':'infra','env':'infra','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
infranode2.example.com openshift_node_labels="{'logging':'true','region':'infra','env':'infra','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"
infranode3.example.com openshift_node_labels="{'logging':'true','region':'infra','env':'infra','openshift_schedulable':'True', 'zone': 'eu-central-1b'}"


[nfs]
node6.example.com

[lb]
loadbalancer1.example.com

[etcd]
master1.example.com
master2.example.com
master3.example.com

[OCP:children]
masters
etcd
nodes
nfs
lb

The createnfs contains all the commands use to create a fake nfs.
The file storage contains the commands used to create PV.
deploy_metric_loggin  is used to deploy logging and metrics.
To test the Jenkins deployment and CI/CD you coudl use https://github.com/openshift-roadshow/nationalparks 

