module github.com/Farhan-slurrp/go-monorepo-example/service-b

go 1.23.2

replace github.com/Farhan-slurrp/go-monorepo-example/libs/logger => ../libs/logger

require github.com/Farhan-slurrp/go-monorepo-example/libs/logger v1.0.0
