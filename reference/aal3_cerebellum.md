# AAL3 Cerebellum Atlas

Cerebellar parcellation from AAL3 (Rolls et al. 2020) with 17 regions
including bilateral lobules and midline vermis. Contains both 2D polygon
geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D meshes for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
aal3_cerebellum()
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
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

## Examples

``` r
aal3_cerebellum()
#> 
#> ── aal3_cerebellum ggseg atlas ─────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 17
#> Hemispheres: left, right, middle
#> Views: coronal, axial, sagittal
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 26 × 3
#>    hemi   region           label                 
#>    <chr>  <chr>            <chr>                 
#>  1 left   cerebellum crus1 Cerebellum_Crus1_left 
#>  2 right  cerebellum crus1 Cerebellum_Crus1_right
#>  3 left   cerebellum crus2 Cerebellum_Crus2_left 
#>  4 right  cerebellum crus2 Cerebellum_Crus2_right
#>  5 left   cerebellum 3     Cerebellum_3_left     
#>  6 right  cerebellum 3     Cerebellum_3_right    
#>  7 left   cerebellum 4 5   Cerebellum_4_5_left   
#>  8 right  cerebellum 4 5   Cerebellum_4_5_right  
#>  9 left   cerebellum 6     Cerebellum_6_left     
#> 10 right  cerebellum 6     Cerebellum_6_right    
#> 11 left   cerebellum 7b    Cerebellum_7b_left    
#> 12 right  cerebellum 7b    Cerebellum_7b_right   
#> 13 left   cerebellum 8     Cerebellum_8_left     
#> 14 right  cerebellum 8     Cerebellum_8_right    
#> 15 left   cerebellum 9     Cerebellum_9_left     
#> 16 right  cerebellum 9     Cerebellum_9_right    
#> 17 left   cerebellum 10    Cerebellum_10_left    
#> 18 right  cerebellum 10    Cerebellum_10_right   
#> 19 middle vermis 1 2       Vermis_1_2            
#> 20 middle vermis 3         Vermis_3              
#> 21 middle vermis 4 5       Vermis_4_5            
#> 22 middle vermis 10        Vermis_10             
#> 23 middle vermis 7         Vermis_7              
#> 24 middle vermis 8         Vermis_8              
#> 25 middle vermis 9         Vermis_9              
#> 26 middle vermis 6         Vermis_6              
```
