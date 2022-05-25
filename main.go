package main

import (
	"loja/routes"
	"net/http"
)

func main() {
	routes.CarregaRostas()
	http.ListenAndServe(":8000", nil)
}
