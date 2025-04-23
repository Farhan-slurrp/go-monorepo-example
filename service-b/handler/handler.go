package handler

import (
	"fmt"
	"net/http"

	"github.com/Farhan-slurrp/go-monorepo-example/shared/logger"
)

func HelloB(w http.ResponseWriter, r *http.Request) {
	logger.Log.Println("Service B: Hello endpoint hit")
	fmt.Fprintln(w, "Hello from Service B")
}
