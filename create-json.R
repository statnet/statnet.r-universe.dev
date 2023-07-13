pkgs <- c("ergm", "statnet.common", "ergmgp", "ergm.ego", "tergm", "ergm.multi",
          "networkDynamic", "network", "ndtv", "latentnet", "ergm.rank", 
          "ergm.count", "tsna", "statnet", "lolog", "rle", "statnetWeb", 
          "ergm.userterms")
u <- paste0("https://github.com/statnet/", pkgs)

seq(along=pkgs) |>
  lapply(function(i) list(package = pkgs[i], url = u[i])) |>
  jsonlite::toJSON(auto_unbox = TRUE, pretty = TRUE) |>
  cat(file = "packages.json")
