library(ggseg.formats)

pkg_dir <- "/Users/athanasm/workspace/ggseg/atlases/ggsegAal"
load(file.path(pkg_dir, "data", "aal.rda"))

aal2_names <- c(
  "1"  = "Precentral",
  "2"  = "Frontal_Sup_2",
  "3"  = "Frontal_Mid_2",
  "4"  = "Frontal_Inf_Oper",
  "5"  = "Frontal_Inf_Tri",
  "6"  = "Frontal_Inf_Orb_2",
  "7"  = "Rolandic_Oper",
  "8"  = "Supp_Motor_Area",
  "9"  = "Frontal_Sup_Medial",
  "10" = "Frontal_Med_Orb",
  "11" = "Rectus",
  "12" = "OFCmed",
  "13" = "OFCant",
  "14" = "OFCpost",
  "15" = "OFClat",
  "16" = "Insula",
  "17" = "Cingulate_Ant",
  "18" = "Cingulate_Mid",
  "19" = "Cingulate_Post",
  "20" = "ParaHippocampal",
  "21" = "Amygdala",
  "22" = "Calcarine",
  "23" = "Cuneus",
  "24" = "Lingual",
  "25" = "Occipital_Sup",
  "26" = "Occipital_Mid",
  "27" = "Occipital_Inf",
  "28" = "Fusiform",
  "29" = "Postcentral",
  "30" = "Parietal_Sup",
  "31" = "Parietal_Inf",
  "32" = "SupraMarginal",
  "33" = "Angular",
  "34" = "Precuneus",
  "35" = "Paracentral_Lobule",
  "36" = "Heschl",
  "37" = "Temporal_Sup",
  "38" = "Temporal_Pole_Sup",
  "39" = "Temporal_Mid",
  "40" = "Temporal_Pole_Mid",
  "41" = "Temporal_Inf"
)

old_to_new_label <- c(
  setNames(
    paste0("lh_", aal2_names),
    paste0("lh_LH_region_", names(aal2_names))
  ),
  setNames(
    paste0("rh_", aal2_names),
    paste0("rh_RH_region_", names(aal2_names))
  )
)

old_to_new_region <- c(
  setNames(aal2_names, paste0("LH_region_", names(aal2_names))),
  setNames(aal2_names, paste0("RH_region_", names(aal2_names)))
)

remap <- function(x, lookup) {
  matched <- lookup[x]
  ifelse(is.na(matched), x, matched)
}

aal$core$region <- remap(aal$core$region, old_to_new_region)
aal$core$label <- remap(aal$core$label, old_to_new_label)
aal$data$sf$label <- remap(aal$data$sf$label, old_to_new_label)

if (!is.null(aal$data$vertices)) {
  aal$data$vertices$label <- unname(remap(aal$data$vertices$label, old_to_new_label))
}

names(aal$palette) <- remap(names(aal$palette), old_to_new_label)

aal$atlas <- "aal2"

aal2 <- aal

cli::cli_alert_info("Renamed atlas regions:")
print(aal2$core)
cat("\nPalette sample:\n")
print(head(aal2$palette))
cli::cli_alert_success("Atlas renamed to '{aal2$atlas}'")

save(aal2, file = file.path(pkg_dir, "data", "aal2.rda"), compress = "xz")
cli::cli_alert_success("Saved to data/aal2.rda")
