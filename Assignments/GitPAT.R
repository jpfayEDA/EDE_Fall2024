# Reading GitHub PAT from environment variable
github_pat <- Sys.getenv("GITHUB_PAT")

# Check if the PAT is retrieved successfully
if (nzchar(github_pat)) {
  print("GitHub PAT successfully retrieved.\n")
} else {
  print("Failed to retrieve GitHub PAT. Please check your environment variable.\n")
}

# Use the PAT, e.g., to authenticate with the GitHub API
# Example using the 'httr' package for API requests
library(httr)

# Example: Fetch your GitHub profile information
url <- "https://api.github.com/user"
response <- GET(url, authenticate(github_pat, ""))
content(response, "text")

system('git remote set-url origin https://github.com/jpfayEDA/EDE_Fall2024.git')
