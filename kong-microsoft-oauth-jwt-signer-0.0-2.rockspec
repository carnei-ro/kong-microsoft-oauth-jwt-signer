package = "kong-microsoft-oauth-jwt-signer"
version = "0.0-2"

source = {
 url    = "git@bitbucket.org:leandro-carneiro/kong-microsoft-oauth-jwt-signer.git",
 branch = "master"
}

description = {
  summary = "generate JWT when oauth flow is valid  ",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-microsoft-oauth-jwt-signer.schema"] = "src/schema.lua",
    ["kong.plugins.kong-microsoft-oauth-jwt-signer.handler"] = "src/handler.lua",
  }
}