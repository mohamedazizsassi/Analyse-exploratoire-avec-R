# Render the PowerPoint deck from the slides/ folder
# Usage (from repo root):
#   Rscript slides/render-ppt.R

quarto_input <- file.path("slides", "eda-academic-performance.qmd")

# Use Quarto's R API if available; fallback to system call.
if (requireNamespace("quarto", quietly = TRUE)) {
  quarto::quarto_render(input = quarto_input, execute = TRUE)
} else {
  system2("quarto", c("render", quarto_input), stdout = TRUE, stderr = TRUE)
}
