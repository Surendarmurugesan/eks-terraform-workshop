module "state_locking" {
    source = "./env/state_locking_and_s3"
}

module "vpc_network" {
    source = "./env/net"
}

module "iam" {
    source = "./env/iam"
}

module "vpc_peering" {
    source = "./env/vpc_peering"
}

module "cicd" {
    source = "./env/cicd"
}
