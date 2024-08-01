# Install and load the svDialogs package if not already installed
#if (!requireNamespace("svDialogs", quietly = TRUE)) {
#  install.packages("svDialogs")
#}
#library(svDialogs)

# Retrieve command-line arguments
args <- commandArgs(trailingOnly = TRUE)

# Check if the correct number of arguments is provided
if (length(args) != 1) {
  stop("Please provide first and last name.")
}

# Assign arguments to variables
name <- args[1]
cat("Congratulations,", name, "!\n")
cat("You've earned the Dragon Slayer Badge.\n")

# Create HTML content with an image
badge_html <- paste0('
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dragon Slaying Badge</title>
    <style>
        .badge {
            background-color: White;
            color: black;
            font-size: 14px;
            padding: 10px;
            border: 2px solid black;
            text-align: center;
            margin: 50px;
            border-radius: 10px;
        }
        img {
            width: 250px;
            height:300px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <div class="badge">
        <img src="img/dragon-slaying.jpeg" alt="Beginner Level Completed Succesfully">
        <p>Congratulations, ', name, '!</p>
        <p>You have earned the Dragon Slayer Badge.</p>
        <p> You have helped to keep the realm safe.<p>
                       </div>
                       </body>
                       </html>
                       ')

# Write HTML content to badge.html
writeLines(badge_html, "badge.html")

# Open the badge.html file in the default web browser
browseURL("badge.html")