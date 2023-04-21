resource "docker_container" "nginx" {
    name = "nginx"
    image = docker_image.nginx_image.name
    must_run = true
    restart = "unless-stopped"

    ports {
        internal = "80"
        external = "8080"
    }
}

resource "docker_container" "nginx2" {
    name = "nginx2"
    image = docker_image.nginx2_image.name
    must_run = true
    restart = "unless-stopped"

    ports {
        internal = "80"
        external = "8081"
    }
}

resource "docker_container" "todolist" {
    name = "todolist"
    image = docker_image.todolist.name
    must_run = true
    restart = "unless-stopped"

    ports {
        internal = "80"
        external = "8082"
    }
}

resource "docker_container" "golang-pipelines" {
    name = "golang-pipelines"
    image = docker_image.golang_pipelines.name
    must_run = true
    restart = "unless-stopped"

    ports {
        internal = "8080"
        external = "8083"
    }
}

resource "docker_image" "nginx_image" {
    name = "nginx"
}

resource "docker_image" "nginx2_image" {
    name = "nginx:stable-alpine"
}
  
resource "docker_image" "todolist" {
    name = "auvberon/todolist:latest"
}

resource "docker_image" "golang_pipelines" {
    name = "auvberon/golang-pipelines:latest"
}
