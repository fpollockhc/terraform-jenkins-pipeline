data "aws_ami" "ubuntu" {
    most_recent = true

    name_regex  = "ubuntu-minimal/images/hvm-ssd/ubuntu-focal-20*"

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
    
    owners = ["099720109477"]
}
