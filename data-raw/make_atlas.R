# Create AAL (Automated Anatomical Labeling) Atlas
#
# Recreates the aal cortical atlas from the bundled annotation files
# on fsaverage5 using ggsegExtra.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggsegExtra package
#   - ggseg.formats package
#
# Run with: Rscript data-raw/make_atlas.R

library(dplyr)
library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")
Sys.setenv(RGL_USE_NULL = "TRUE")
options(freesurfer.verbose = FALSE)
options(chromote.timeout = 120)
future::plan(future::sequential)
progressr::handlers("cli")
progressr::handlers(global = TRUE)

pkg_dir <- "/Users/athanasm/workspace/ggseg/atlases/ggsegAal"

annot_files <- file.path(
  pkg_dir, "data-raw", "fsaverage5",
  c("lh.aal.annot", "rh.aal.annot")
)

for (f in annot_files) {
  if (!file.exists(f)) {
    cli::cli_abort("Annotation not found: {.path {f}}")
  }
}

cli::cli_h1("Creating aal cortical atlas")

atlas_raw <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "aal",
  output_dir = file.path(pkg_dir, "data-raw"),
  tolerance = 1,
  smoothness = 2,
  skip_existing = TRUE,
  cleanup = FALSE
)

cli::cli_alert_info("Regions found:")
print(unique(atlas_raw$core$region))

atlas_raw <- atlas_raw |>
  atlas_region_contextual("unknown", "label")

aal <- atlas_raw

cli::cli_alert_success("Atlas created with {nrow(aal$core)} regions")
print(aal)

save(aal, file = file.path(pkg_dir, "data", "aal.rda"), compress = "xz")
cli::cli_alert_success("Saved to data/aal.rda")
