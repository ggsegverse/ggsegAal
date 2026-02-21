#' AAL Cortical Atlas
#'
#' Brain atlas for the original Automated Anatomical Labeling parcellation
#' (Tzourio-Mazoyer et al. 2002).
#'
#' @family ggseg_atlases
#'
#' @references Tzourio-Mazoyer N, Landeau B, Papathanassiou D, et al. (2002).
#'     Automated Anatomical Labeling of Activations in SPM Using a Macroscopic
#'     Anatomical Parcellation of the MNI MRI Single-Subject Brain.
#'     *NeuroImage*, 15(1):273-289.
#'     \doi{10.1006/nimg.2001.0978}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' aal()
aal <- function() .aal

#' AAL2 Cortical Atlas
#'
#' Brain atlas for the AAL2 parcellation (Rolls et al. 2015) with 41 cortical
#' regions per hemisphere. Contains both 2D polygon geometry for
#' [ggseg::geom_brain()] and 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' Region names confirmed by Herve Lemaitre (AAL2 co-author), mapping the
#' original generic annotation labels to anatomical AAL2 names.
#'
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015).
#'     Implementation of a new parcellation of the orbitofrontal cortex in
#'     the automated anatomical labeling atlas. Neuroimage, 122, 1-5.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/26241684/}{PubMed})
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @export
#' @examples
#' aal2()
aal2 <- function() .aal2
#' AAL3 Cortical Atlas
#'
#' Cortical parcellation from AAL3 (Rolls et al. 2020) with 45 regions per
#' hemisphere. Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @export
#' @examples
#' aal3_cortical()
aal3_cortical <- function() .aal3_cortical
#' AAL3 Subcortical (Basal Ganglia) Atlas
#'
#' Subcortical parcellation from AAL3 (Rolls et al. 2020) covering basal
#' ganglia and thalamic nuclei with 22 regions. Contains both 2D polygon
#' geometry for [ggseg::geom_brain()] and 3D meshes for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' aal3_subcortical()
aal3_subcortical <- function() .aal3_subcortical
#' AAL3 Cerebellum Atlas
#'
#' Cerebellar parcellation from AAL3 (Rolls et al. 2020) with 17 regions
#' including bilateral lobules and midline vermis. Contains both 2D polygon
#' geometry for [ggseg::geom_brain()] and 3D meshes for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' aal3_cerebellum()
aal3_cerebellum <- function() .aal3_cerebellum
