variable "REGISTRY" {
    default = "hub.docker.com"
}

group "all" {
    targets = ["iredis"]
}

target "iredis" {
    dockerfile = "iredis.Dockerfile"
    tags = ["${REGISTRY}/iredis:latest"]
}
