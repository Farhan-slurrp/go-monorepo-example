package main

import (
	"log"
	"net/http"

	"github.com/Farhan-slurrp/go-monorepo-example/service-b/handler"
)

func main() {
	http.HandleFunc("/", handler.HelloB)
	log.Println("Service B running on :8082")
	log.Fatal(http.ListenAndServe(":8082", nil))
}
