{
  // Platform configuration
  platform: 'local', // change it to azure
  
  // Whether to include extra configurations
  extra_configs: false,
  
  // Whether to include blackbox-exporter
  'blackbox-exporter': false,
  
  // Whether to connect to Obmondo
  connect_obmondo: true,
  
  // Version of kube-prometheus
  kube_prometheus_version: 'v0.11.0',

  // Grafana configurations
  grafana_root_url: 'https://grafana.test.cluster.com',
  
  // Prometheus Operator resources configurations
  prometheus_operator_resources+: {
    limits: { memory: '80Mi' },
    requests: { cpu: '10m', memory: '30Mi' },
  },
  
  // Alertmanager resources configurations
  alertmanager_resources+: {
    limits: { memory: '50Mi' },
    requests: { cpu: '10m', memory: '20Mi' },
  },
  
  // Prometheus resources configurations
  prometheus_resources+: {
    limits: { memory: '2Gi' },
    requests: { cpu: '200m', memory: '200Mi' },
  },
  
  // Whether to include Alertmanager certificate
  alertmanager_cert: false,
  
  // Additional mixins to include
  addMixins+: {
    ceph: false,
    velero: true,
  },
  
  // Namespaces to scrape by Prometheus
  prometheus_scrape_namespaces: [
    'velero',
    'logging',
  ],
  
  // Prometheus storage configurations
  prometheus+: {
    storage: {
      size: '10Gi',
      classname: 'default',
    },
  },
}

