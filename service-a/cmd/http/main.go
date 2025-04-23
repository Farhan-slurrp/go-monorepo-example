package main

import (
	"log"
	"net/http"

	"github.com/Farhan-slurrp/go-monorepo-example/service-a/handler"
)

func main() {
	http.HandleFunc("/", handler.HelloA)
	log.Println("Service A running on :8081")
	log.Fatal(http.ListenAndServe(":8081", nil))
}
