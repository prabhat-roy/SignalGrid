controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/signalgrid" }
}
worker {
  name = "worker-signalgrid-1"
  controllers = ["controller-1.boundary.signalgrid.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/signalgrid-boundary"
}
