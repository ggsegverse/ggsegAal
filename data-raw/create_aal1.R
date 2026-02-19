##
## AAL1 atlas creation (exploratory)
##
## Attempts to create a cortical surface atlas from the original AAL1
## volumetric parcellation (Tzourio-Mazoyer et al. 2002, 116 regions).
##
## This requires:
##   - FreeSurfer installed (for mri_vol2surf / mris_ca_label)
##   - Python with nilearn (alternative projection path)
##   - The AAL1 SPM toolbox from https://www.gin.cnrs.fr/en/tools/aal/
##
## The AAL1 atlas differs from AAL2 in that it does NOT have the
## orbitofrontal cortex subdivision (OFCmed/OFCant/OFCpost/OFClat).
## Instead it has: Frontal_Sup_Orb, Frontal_Mid_Orb, Olfactory.
##
## Status: NOT YET IMPLEMENTED
## The vol-to-surface projection has not been validated. If you have
## FreeSurfer available, try the workflow below.
##

library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

pkg_dir <- "/Users/athanasm/workspace/ggseg/atlases/ggsegAal"
aal1_dir <- file.path(pkg_dir, "data-raw", "aal1")
dir.create(aal1_dir, showWarnings = FALSE, recursive = TRUE)

## ---- Step 1: Download AAL1 from GIN-CNRS ----
##
## The AAL1 atlas is distributed as an SPM toolbox.
## Download URL: https://www.gin.cnrs.fr/wp-content/uploads/aal_for_SPM12.tar.gz
##
## Contains:
##   - aal/atlas/AAL.nii (NIfTI volume, 116 regions in MNI space)
##   - aal/atlas/AAL.xml (region lookup table)
##
aal1_url <- "https://www.gin.cnrs.fr/wp-content/uploads/aal_for_SPM12.tar.gz"
aal1_tarball <- file.path(aal1_dir, "aal_for_SPM12.tar.gz")

if (!file.exists(aal1_tarball)) {
  cli::cli_alert_info("Downloading AAL1 SPM toolbox...")
  download.file(aal1_url, aal1_tarball, mode = "wb")
}

untar(aal1_tarball, exdir = aal1_dir)

## ---- Step 2: Vol-to-surface projection ----
##
## Two approaches (FreeSurfer required for both):
##
## A) Using mri_vol2surf:
##    mri_vol2surf --src AAL.nii --out lh.aal1.mgh \
##      --hemi lh --regheader fsaverage5 --projdist 0.5
##    (then threshold and convert to .annot)
##
## B) Using faskowit/multiAtlasTT Registration Fusion:
##    https://github.com/faskowit/multiAtlasTT
##    (this is how the current AAL2 annotation files were created)
##
## For now, this script only downloads and prepares the data.
## The actual projection requires manual intervention.

cli::cli_alert_info("AAL1 data downloaded to {.path {aal1_dir}}")
cli::cli_alert_info("Manual vol-to-surface projection required.")
cli::cli_alert_info("See comments in this script for guidance.")

## ---- Step 3: After projection, build atlas ----
##
## Once you have lh.aal1.annot and rh.aal1.annot on fsaverage5:
##
## library(ggsegExtra)
## aal1 <- create_cortical_atlas(
##   input_annot = c("data-raw/aal1/lh.aal1.annot",
##                   "data-raw/aal1/rh.aal1.annot"),
##   atlas_name = "aal1",
##   output_dir = file.path(pkg_dir, "data-raw"),
##   tolerance = 1,
##   smoothness = 2
## )
## aal1 <- aal1 |>
##   atlas_region_contextual("unknown", "label") |>
##   atlas_view_gather()
## save(aal1, file = file.path(pkg_dir, "data", "aal1.rda"), compress = "xz")
