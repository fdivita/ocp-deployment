#######################
#login as system:admin





ansible-playbook -f 20 /usr/share/ansible/openshift-ansible/playbooks/byo/openshift-cluster/openshift-metrics.yml -e openshift_metrics_install_metrics=True  -e openshift_metrics_hawkular_hostname=hawkular-metrics.apps.oslab.opentlc.com 
-e openshift_metrics_cassandra_nodeselector={"region":"infra"}

ansible-playbook -f 20 /usr/share/ansible/openshift-ansible/playbooks/byo/openshift-cluster/openshift-logging.yml -e openshift_logging_install_logging=True -e openshift_logging_master_public_url=master1-80c1.oslab.opentlc.com