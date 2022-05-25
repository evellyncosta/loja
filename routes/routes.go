package routes

import (
	"loja/controllers"
	"net/http"
)

func CarregaRostas() {
	http.HandleFunc("/", controllers.Index)
}
