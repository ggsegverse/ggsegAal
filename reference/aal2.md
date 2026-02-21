# AAL2 Cortical Atlas

Brain atlas for the AAL2 parcellation (Rolls et al. 2015) with 41
cortical regions per hemisphere. Contains both 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
aal2()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## Details

Region names confirmed by Herve Lemaitre (AAL2 co-author), mapping the
original generic annotation labels to anatomical AAL2 names.

## References

Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015). Implementation
of a new parcellation of the orbitofrontal cortex in the automated
anatomical labeling atlas. Neuroimage, 122, 1-5.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/26241684/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

## Examples

``` r
aal2()
#> 
#> ── aal2 ggseg atlas ────────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 41
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 82 × 3
#>    hemi  region             label                
#>    <chr> <chr>              <chr>                
#>  1 left  Precentral         lh_Precentral        
#>  2 left  Frontal_Sup_2      lh_Frontal_Sup_2     
#>  3 left  Frontal_Mid_2      lh_Frontal_Mid_2     
#>  4 left  Frontal_Inf_Oper   lh_Frontal_Inf_Oper  
#>  5 left  Frontal_Inf_Tri    lh_Frontal_Inf_Tri   
#>  6 left  Frontal_Inf_Orb_2  lh_Frontal_Inf_Orb_2 
#>  7 left  Rolandic_Oper      lh_Rolandic_Oper     
#>  8 left  Supp_Motor_Area    lh_Supp_Motor_Area   
#>  9 left  Frontal_Sup_Medial lh_Frontal_Sup_Medial
#> 10 left  Frontal_Med_Orb    lh_Frontal_Med_Orb   
#> 11 left  Rectus             lh_Rectus            
#> 12 left  OFCmed             lh_OFCmed            
#> 13 left  OFCant             lh_OFCant            
#> 14 left  OFCpost            lh_OFCpost           
#> 15 left  OFClat             lh_OFClat            
#> 16 left  Insula             lh_Insula            
#> 17 left  Cingulate_Ant      lh_Cingulate_Ant     
#> 18 left  Cingulate_Mid      lh_Cingulate_Mid     
#> 19 left  Cingulate_Post     lh_Cingulate_Post    
#> 20 left  ParaHippocampal    lh_ParaHippocampal   
#> 21 left  Amygdala           lh_Amygdala          
#> 22 left  Calcarine          lh_Calcarine         
#> 23 left  Cuneus             lh_Cuneus            
#> 24 left  Lingual            lh_Lingual           
#> 25 left  Occipital_Sup      lh_Occipital_Sup     
#> 26 left  Occipital_Mid      lh_Occipital_Mid     
#> 27 left  Occipital_Inf      lh_Occipital_Inf     
#> 28 left  Fusiform           lh_Fusiform          
#> 29 left  Postcentral        lh_Postcentral       
#> 30 left  Parietal_Sup       lh_Parietal_Sup      
#> 31 left  Parietal_Inf       lh_Parietal_Inf      
#> 32 left  SupraMarginal      lh_SupraMarginal     
#> 33 left  Angular            lh_Angular           
#> 34 left  Precuneus          lh_Precuneus         
#> 35 left  Paracentral_Lobule lh_Paracentral_Lobule
#> 36 left  Heschl             lh_Heschl            
#> 37 left  Temporal_Sup       lh_Temporal_Sup      
#> 38 left  Temporal_Pole_Sup  lh_Temporal_Pole_Sup 
#> 39 left  Temporal_Mid       lh_Temporal_Mid      
#> 40 left  Temporal_Pole_Mid  lh_Temporal_Pole_Mid 
#> 41 left  Temporal_Inf       lh_Temporal_Inf      
#> 42 right Precentral         rh_Precentral        
#> 43 right Frontal_Sup_2      rh_Frontal_Sup_2     
#> 44 right Frontal_Mid_2      rh_Frontal_Mid_2     
#> 45 right Frontal_Inf_Oper   rh_Frontal_Inf_Oper  
#> 46 right Frontal_Inf_Tri    rh_Frontal_Inf_Tri   
#> 47 right Frontal_Inf_Orb_2  rh_Frontal_Inf_Orb_2 
#> 48 right Rolandic_Oper      rh_Rolandic_Oper     
#> 49 right Supp_Motor_Area    rh_Supp_Motor_Area   
#> 50 right Frontal_Sup_Medial rh_Frontal_Sup_Medial
#> 51 right Frontal_Med_Orb    rh_Frontal_Med_Orb   
#> 52 right Rectus             rh_Rectus            
#> 53 right OFCmed             rh_OFCmed            
#> 54 right OFCant             rh_OFCant            
#> 55 right OFCpost            rh_OFCpost           
#> 56 right OFClat             rh_OFClat            
#> 57 right Insula             rh_Insula            
#> 58 right Cingulate_Ant      rh_Cingulate_Ant     
#> 59 right Cingulate_Mid      rh_Cingulate_Mid     
#> 60 right Cingulate_Post     rh_Cingulate_Post    
#> 61 right ParaHippocampal    rh_ParaHippocampal   
#> 62 right Amygdala           rh_Amygdala          
#> 63 right Calcarine          rh_Calcarine         
#> 64 right Cuneus             rh_Cuneus            
#> 65 right Lingual            rh_Lingual           
#> 66 right Occipital_Sup      rh_Occipital_Sup     
#> 67 right Occipital_Mid      rh_Occipital_Mid     
#> 68 right Occipital_Inf      rh_Occipital_Inf     
#> 69 right Fusiform           rh_Fusiform          
#> 70 right Postcentral        rh_Postcentral       
#> 71 right Parietal_Sup       rh_Parietal_Sup      
#> 72 right Parietal_Inf       rh_Parietal_Inf      
#> 73 right SupraMarginal      rh_SupraMarginal     
#> 74 right Angular            rh_Angular           
#> 75 right Precuneus          rh_Precuneus         
#> 76 right Paracentral_Lobule rh_Paracentral_Lobule
#> 77 right Heschl             rh_Heschl            
#> 78 right Temporal_Sup       rh_Temporal_Sup      
#> 79 right Temporal_Pole_Sup  rh_Temporal_Pole_Sup 
#> 80 right Temporal_Mid       rh_Temporal_Mid      
#> 81 right Temporal_Pole_Mid  rh_Temporal_Pole_Mid 
#> 82 right Temporal_Inf       rh_Temporal_Inf      
```
