# AAL3 Subcortical (Basal Ganglia) Atlas

Subcortical parcellation from AAL3 (Rolls et al. 2020) covering basal
ganglia and thalamic nuclei with 22 regions. Contains both 2D polygon
geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D meshes for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
aal3_subcortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## References

Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M. (2020).
Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/31521825/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md)

## Examples

``` r
aal3_subcortical()
#> 
#> ── aal3_subcortical ggseg atlas ────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 22
#> Hemispheres: left, right
#> Views: coronal, axial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 43 × 3
#>    hemi  region   label         
#>    <chr> <chr>    <chr>         
#>  1 left  caudate  Caudate_left  
#>  2 right caudate  Caudate_right 
#>  3 left  putamen  Putamen_left  
#>  4 right putamen  Putamen_right 
#>  5 left  thal lp  Thal_LP_left  
#>  6 left  thal vpl Thal_VPL_left 
#>  7 right thal vpl Thal_VPL_right
#>  8 left  thal il  Thal_IL_left  
#>  9 right thal il  Thal_IL_right 
#> 10 left  thal mdm Thal_MDm_left 
#> 11 right thal mdm Thal_MDm_right
#> 12 left  thal lgn Thal_LGN_left 
#> 13 right thal lgn Thal_LGN_right
#> 14 left  thal pum Thal_PuM_left 
#> 15 right thal pum Thal_PuM_right
#> 16 left  thal pua Thal_PuA_left 
#> 17 right thal pua Thal_PuA_right
#> 18 left  thal pul Thal_PuL_left 
#> 19 right thal pul Thal_PuL_right
#> 20 left  vta      VTA_left      
#> 21 right vta      VTA_right     
#> 22 left  sn pc    SN_pc_left    
#> 23 right sn pc    SN_pc_right   
#> 24 left  sn pr    SN_pr_left    
#> 25 right sn pr    SN_pr_right   
#> 26 left  red n    Red_N_left    
#> 27 right red n    Red_N_right   
#> 28 left  pallidum Pallidum_left 
#> 29 right pallidum Pallidum_right
#> 30 left  thal av  Thal_AV_left  
#> 31 right thal av  Thal_AV_right 
#> 32 left  thal va  Thal_VA_left  
#> 33 right thal va  Thal_VA_right 
#> 34 right thal vl  Thal_VL_right 
#> 35 left  thal vl  Thal_VL_left  
#> 36 left  thal mdl Thal_MDl_left 
#> 37 right thal mdl Thal_MDl_right
#> 38 left  thal mgn Thal_MGN_left 
#> 39 right thal mgn Thal_MGN_right
#> 40 left  thal pui Thal_PuI_left 
#> 41 right thal pui Thal_PuI_right
#> 42 left  n acc    N_Acc_left    
#> 43 right n acc    N_Acc_right   
```
