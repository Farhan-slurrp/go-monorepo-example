package handler

import (
	"fmt"
	"net/http"

	"github.com/Farhan-slurrp/go-monorepo-example/shared/logger"
)

func HelloA(w http.ResponseWriter, r *http.Request) {
	logger.Log.Println("Service A: Hello endpoint hit")
	fmt.Fprintln(w, "Hello from Service A")
}
