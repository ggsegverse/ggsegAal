#' AAL2 Cortical Atlas
#'
#' Brain atlas for the AAL2 parcellation (Rolls et al. 2015) with 41 cortical
#' regions per hemisphere. Contains both 2D polygon geometry for
#' [ggseg::geom_brain()] and 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' Region names confirmed by Herve Lemaitre (AAL2 co-author), mapping the
#' original generic annotation labels to anatomical AAL2 names.
#'
#' @docType data
#' @name aal2
#' @usage data(aal2)
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
#' data(aal2)
#' aal2
"aal2"


#' AAL3 Cortical Atlas
#'
#' Cortical parcellation from AAL3 (Rolls et al. 2020) with 45 regions per
#' hemisphere. Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @docType data
#' @name aal3_cortical
#' @usage data(aal3_cortical)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @format A [ggseg.formats::ggseg_atlas] object (cortical).
#' @examples
#' data(aal3_cortical)
#' aal3_cortical
"aal3_cortical"


#' AAL3 Subcortical (Basal Ganglia) Atlas
#'
#' Subcortical parcellation from AAL3 (Rolls et al. 2020) covering basal
#' ganglia and thalamic nuclei with 22 regions. Contains both 2D polygon
#' geometry for [ggseg::geom_brain()] and 3D meshes for [ggseg3d::ggseg3d()].
#'
#' @docType data
#' @name aal3_subcortical
#' @usage data(aal3_subcortical)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @format A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @examples
#' data(aal3_subcortical)
#' aal3_subcortical
"aal3_subcortical"


#' AAL3 Cerebellum Atlas
#'
#' Cerebellar parcellation from AAL3 (Rolls et al. 2020) with 17 regions
#' including bilateral lobules and midline vermis. Contains both 2D polygon
#' geometry for [ggseg::geom_brain()] and 3D meshes for [ggseg3d::ggseg3d()].
#'
#' @docType data
#' @name aal3_cerebellum
#' @usage data(aal3_cerebellum)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M.
#'     (2020). Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/31521825/}{PubMed})
#'
#' @format A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @examples
#' data(aal3_cerebellum)
#' aal3_cerebellum
"aal3_cerebellum"
