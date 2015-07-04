#To start with setup 
class apt_update {
    exec { "aptGetUpdate":
        command => "sudo apt-get update",
        path => ["/bin", "/usr/bin"]
    }
}

# Q&D solution for path in exec (perfect for Vagrant)

Exec { path => "/bin" }