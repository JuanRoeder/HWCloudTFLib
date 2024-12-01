locals {
  
  enum_regions = {
    "LA-Santiago" = "la-south-2"
    "LA-Lima1" = "sa-peru-1"
    "LA-Mexico-City2" = "la-north-2"
    "LA-Sao-Paulo1" = "sa-brazil-1"
    "LA-Mexico-City1" = "na-mexico-1"
    "CN-South-Guangzhou" = "cn-south-1"
    "CN-North-Beijing4" = "cn-north-4"
    "CN East-Shanghai1" = "cn-east-3"
    "AP-Singapore" = "ap-southeast-3"
    "AP-Bangkok" = "ap-southeast-2"
    "CN-Hong-Kong" = "ap-southeast-1"
    "AF-Johannesburg" = "af-south-1"
  }

  enum_commons = {

    charging_mode = {
      "Pay-per-use" = "postPaid"
      "Yearly-Monthly" = "prePaid"
    }

    period_unit = {
      "Monthly" = "month"
      "Yearly" = "year"
    }

  }  

  enum_ecs = {

    performance_type = {
      "General-Computing-basic" = "entry"
      "General-Computing-basic-T7" = "entry_smb"
      "General-Computing" = "normal"
      "General-Computing-X1" = "advanced_smb"
      "General-Computing-plus" = "computingv3"
      "General-Computing-plus-c6ne" = "computingv3_c6ne"
      "Memory-optimized" = "highmem"
      "Large-memory" = "saphana"
      "GPU-accelerated" = "gpu"
      "Ultra-high-IO" = "highio"
    }

  }

  enum_evs = {
    
    type = {
      "Common-IO" = "SATA"
      "High-IO" = "SAS"
      "Ultra-high-IO" = "SSD"
      "General-purpose-SSD" = "GPSSD"
      "Extreme-SSD" = "ESSD"
      "General-purpose-SSD-V2" = "GPSSD2"
      "Extreme-SSD-V2" = "ESSD2"
    }

  }

  enum_ims = {

    architecture = {
      x86 = "x86"
      arm = "arm"
    }

    image_type = {
      "ECS" = "FusionCompute"
      "BMS" = "Ironic"
      "Data" = "DataImage"
      "ISO" = "IsoImage"
    }

    visibility = {
      Public = "public"
      Private = "private"
      Market = "market"
      Shared = "shared"
    }

    os_type = {

      "windows" = {
        "name" = "Windows"
        "WS2019-Datacenter-EN" = "Windows Server 2019 Datacenter 64bit English"
        "WS2019-Datacenter-CN" = "Windows Server 2019 Datacenter 64bit"
        "WS2016-Datacenter-EN" = "Windows Server 2016 Datacenter 64bit English"
        "WS2016-Datacenter-CN" = "Windows Server 2016 Datacenter 64bit"
        "WS2016-Standard-EN" = "Windows Server 2016 Standard 64bit English"
        "WS2016-Standard-CN" = "Windows Server 2016 Standard 64bit"
        "WS2016-Standard-Pi2" = "Windows Server 2016 Standard 64bit for Pi2"
        "WS2012R2-Datacenter-EN" = "Windows Server 2012 R2 Datacenter 64bit English"
        "WS2012R2-Datacenter-CN" = "Windows Server 2012 R2 Datacenter 64bit"
        "WS2012R2-Standard-EN" = "Windows Server 2012 R2 Standard 64bit English"
        "WS2012SR2-Standard-CN" = "Windows Server 2012 R2 Standard 64bit"
      }

      "CentOS-BMS" = {
        "name" = "CentOS"
        "CentOS-7-9-sdi2" = "CentOS 7.9 x86 64bit sdi2 for BareMetal With Uniagent"
        "CentOS-7-9-sdi3" = "CentOS 7.9 x86 64bit sdi3 for BareMetal With Uniagent"
      }

      "CentOS" = {
        "name" = "CentOS"
        "CentOS-6-10" = "CentOS 6.10 64bit"
        "CentOS-7-2" = "CentOS 7.2 64bit"
        "CentOS-7-3" = "CentOS 7.3 64bit"
        "CentOS-7-4" = "CentOS 7.4 64bit"
        "CentOS-7-5" = "CentOS 7.5 64bit"
        "CentOS-7-5-Tesla-Cuda" = "CentOS 7.5 64bit with Tesla Driver 418.67 and Cuda 10.1"
        "CentOS-7-6" = "CentOS 7.6 64bit"
        "CentOS-7-7" = "CentOS 7.7 64bit"
        "CentOS-7-8" = "CentOS 7.8 64bit"
        "CentOS-7-8" = "CentOS 7.8 64bit"
        "CentOS-7-9" = "CentOS 7.9 64bit"
        "CentOS-8-0" = "CentOS 8.0 64bit"
        "CentOS-8-1" = "CentOS 8.1 64bit"
        "CentOS-8-2" = "CentOS 8.2 64bit"
        "CentOS-8-2-Tesla-Cuda" = "CentOS 8.2 64bit with Tesla Driver 460.73.01 and Cuda 11.2"
      }

      "Ubuntu-BMS" = {
        "Ubuntu-1804-sdi2" = "Ubuntu 1804 x86 server 64bit sdi2 for BareMetal With Uniagent"
      }

      "Ubuntu" ={
        "name" = "Ubuntu"
        "Ubuntu-16-04" = "Ubuntu 16.04 server 64bit"
        "Ubuntu-16-04-Tesla-Cuda" = "Ubuntu 16.04 server 64bit with Tesla Driver 418.67 and Cuda 10.1"
        "Ubuntu-18-04" = "Ubuntu 18.04 server 64bit"
        "Ubuntu-18-04-Tesla-Cuda" = "Ubuntu 18.04 server 64bit with Tesla Driver 460.73.01 and CUDA 11.2"
        "Ubuntu-20-04" = "Ubuntu 20.04 server 64bit"
        "Ubuntu-22-04" = "Ubuntu 22.04 server 64bit"
      }
    }

  }

  enum_vpc = {

    route_type = {
      "Ecs" = "ecs"
      "Extension-NIC" = "eni"
      "Virtual-IP" = "vip"
      "NAT-GW" = "nat"
      "VPC-Peering" = "peering"
      "VPN-GW" = "vpn"
      "Direct-Connect" = "dc"
      "Cloud-Connect" = "cc"
      "VPC-Endpoint" = "egw"
      "Enterprise-Route" = "er"
    }

    secgroup_type = {
      inbound = "ingress"
      outbound = "egress"
    }

    ip_version = {
      IPv4 = "IPv4"
      IPv6 = "IPv6"
    }

    protocol_type = {
      TCP = "tcp"
      UDP = "udp"
      ICMP = "icmp"
      ICMPv6 = "icmpv6"
    }

    action_type = {
      ALLOW = "allow"
      DENY = "deny"
    }

  }

  enum_eip = {   

    type = {
      "dynamic-BGP" = "5_bgp"
      "static BGP" = "5_sbgp"
    }

    share_type = {
      "Dedicated" = "PER"
      "Shared" = "WHOLE"
    }

    charge_mode = {
      "Traffic" = "traffic"
      "Bandwidth" = "bandwidth"
    }

  }

  enum_vpn = {

    flavor = {
      Basic = "Basic"
      Professional1 = "Professional1"
      Professional2 = "Professional2"
      GM = "GM"
    }

    attachment_type = {
      VPC = "vpc"
      Enterprise-Router = "er"
    }

    network_type = {
      Public = "public"
      Private = "private"
    }

    ha_mode = {
      Active-Standby = "active-standby"
      Active-Active = "active-active"
    }

    customer_id_type = {
      IP = "ip"
      FQDN = "fqdn"
    }

    connection_type = {
      Static-Routing = "static"
      BGP-Routing = "bgp"
      Policy-Based = "policy"
    }

    authentication_algorithm = {
      sha1 = "sha1"
      md5 = "md5"
      sha2-256 = "sha2-256"
      sha2-384 = "sha2-384"
      sha2-512 = "sha2-512"
    }

    encryption_algorithm = {
      "3des" = "3des"
      aes-128 = "aes-128"
      aes-192 = "aes-192"
      aes-256 = "aes-256"
      aes-128-gcm-16 = "aes-128-gcm-16"
      aes-256-gcm-16 = "aes-256-gcm-16"
      aes-128-gcm-128 = "aes-128-gcm-128"
      aes-256-gcm-128 = "aes-256-gcm-128"
    }

    ike_version = {
      v1 = "v1"
      v2 = "v2"
    }

    authentication_method = {
      pre-share = "pre-share"
      digital-envelope-v2 = "digital-envelope-v2"
    }

    pfs = {
      group1 = "group1"
      group2 = "group2"
      group5 = "group5"
      group14 = "group14"
      group15 = "group15"
      group16 = "group16"
      group19 = "group19"
      group20 = "group20"
      group21 = "group21"
    }

    dh_group = {
      group1 = "group1"
      group2 = "group2"
      group5 = "group5"
      group14 = "group14"
      group15 = "group15"
      group16 = "group16"
      group19 = "group19"
      group20 = "group20"
      group21 = "group21"
    }

    encapsulation_mode = {
      tunnel = "tunnel"
    }

    transform_protocol = {
      esp = "esp"
    }

  }
}