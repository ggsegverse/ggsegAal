#' AAL (Automated Anatomical Labeling) Atlas
#'
#' Brain atlas for the AAL parcellation with 41 regions per hemisphere.
#' Contains both 2D polygon geometry for [ggseg::geom_brain()] and
#' 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @docType data
#' @name aal
#' @usage data(aal)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015).
#'     Implementation of a new parcellation of the orbitofrontal cortex in
#'     the automated anatomical labeling atlas. Neuroimage, 122, 1-5.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/26241684/}{PubMed})
#'
#' @format A [ggseg.formats::ggseg_atlas] object (cortical).
#' @examples
#' data(aal)
#' aal
"aal"
