# AAL3 Cortical Atlas

Cortical parcellation from AAL3 (Rolls et al. 2020) with 45 regions per
hemisphere. Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html).

## Usage

``` r
aal3_cortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M. (2020).
Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/31521825/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

## Examples

``` r
aal3_cortical()
#> 
#> ── aal3_cortical ggseg atlas ───────────────────────────────────────────────────
#> Type: cortical
#> Regions: 45
#> Hemispheres: left, right
#> Views: lateral, medial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✖ ggseg3d (none)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 92 × 3
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
#>  9 left  Olfactory          lh_Olfactory         
#> 10 left  Rectus             lh_Rectus            
#> 11 left  OFCmed             lh_OFCmed            
#> 12 left  OFCant             lh_OFCant            
#> 13 left  OFCpost            lh_OFCpost           
#> 14 left  OFClat             lh_OFClat            
#> 15 left  Insula             lh_Insula            
#> 16 left  Lingual            lh_Lingual           
#> 17 left  Occipital_Sup      lh_Occipital_Sup     
#> 18 left  Occipital_Mid      lh_Occipital_Mid     
#> 19 left  Occipital_Inf      lh_Occipital_Inf     
#> 20 left  Fusiform           lh_Fusiform          
#> 21 left  Postcentral        lh_Postcentral       
#> 22 left  Parietal_Sup       lh_Parietal_Sup      
#> 23 left  Parietal_Inf       lh_Parietal_Inf      
#> 24 left  SupraMarginal      lh_SupraMarginal     
#> 25 left  Angular            lh_Angular           
#> 26 left  Paracentral_Lobule lh_Paracentral_Lobule
#> 27 left  Heschl             lh_Heschl            
#> 28 left  Temporal_Sup       lh_Temporal_Sup      
#> 29 left  Temporal_Pole_Sup  lh_Temporal_Pole_Sup 
#> 30 left  Temporal_Mid       lh_Temporal_Mid      
#> 31 left  Temporal_Pole_Mid  lh_Temporal_Pole_Mid 
#> 32 left  Temporal_Inf       lh_Temporal_Inf      
#> 33 left  NA                 lh_unknown           
#> 34 left  Frontal_Sup_Medial lh_Frontal_Sup_Medial
#> 35 left  Frontal_Med_Orb    lh_Frontal_Med_Orb   
#> 36 left  Cingulate_Mid      lh_Cingulate_Mid     
#> 37 left  Cingulate_Post     lh_Cingulate_Post    
#> 38 left  Hippocampus        lh_Hippocampus       
#> 39 left  ParaHippocampal    lh_ParaHippocampal   
#> 40 left  Amygdala           lh_Amygdala          
#> 41 left  Calcarine          lh_Calcarine         
#> 42 left  Cuneus             lh_Cuneus            
#> 43 left  Precuneus          lh_Precuneus         
#> 44 left  ACC_sub            lh_ACC_sub           
#> 45 left  ACC_pre            lh_ACC_pre           
#> 46 left  ACC_sup            lh_ACC_sup           
#> 47 right NA                 rh_unknown           
#> 48 right Frontal_Sup_2      rh_Frontal_Sup_2     
#> 49 right Supp_Motor_Area    rh_Supp_Motor_Area   
#> 50 right Olfactory          rh_Olfactory         
#> 51 right Frontal_Sup_Medial rh_Frontal_Sup_Medial
#> 52 right Frontal_Med_Orb    rh_Frontal_Med_Orb   
#> 53 right Rectus             rh_Rectus            
#> 54 right Cingulate_Mid      rh_Cingulate_Mid     
#> 55 right Cingulate_Post     rh_Cingulate_Post    
#> 56 right Hippocampus        rh_Hippocampus       
#> 57 right ParaHippocampal    rh_ParaHippocampal   
#> 58 right Amygdala           rh_Amygdala          
#> 59 right Calcarine          rh_Calcarine         
#> 60 right Cuneus             rh_Cuneus            
#> 61 right Lingual            rh_Lingual           
#> 62 right Occipital_Sup      rh_Occipital_Sup     
#> 63 right Fusiform           rh_Fusiform          
#> 64 right Postcentral        rh_Postcentral       
#> 65 right Parietal_Sup       rh_Parietal_Sup      
#> 66 right Precuneus          rh_Precuneus         
#> 67 right Paracentral_Lobule rh_Paracentral_Lobule
#> 68 right Temporal_Pole_Sup  rh_Temporal_Pole_Sup 
#> 69 right Temporal_Pole_Mid  rh_Temporal_Pole_Mid 
#> 70 right Temporal_Inf       rh_Temporal_Inf      
#> 71 right ACC_sub            rh_ACC_sub           
#> 72 right ACC_pre            rh_ACC_pre           
#> 73 right ACC_sup            rh_ACC_sup           
#> 74 right Precentral         rh_Precentral        
#> 75 right Frontal_Mid_2      rh_Frontal_Mid_2     
#> 76 right Frontal_Inf_Oper   rh_Frontal_Inf_Oper  
#> 77 right Frontal_Inf_Tri    rh_Frontal_Inf_Tri   
#> 78 right Frontal_Inf_Orb_2  rh_Frontal_Inf_Orb_2 
#> 79 right Rolandic_Oper      rh_Rolandic_Oper     
#> 80 right OFCmed             rh_OFCmed            
#> 81 right OFCant             rh_OFCant            
#> 82 right OFCpost            rh_OFCpost           
#> 83 right OFClat             rh_OFClat            
#> 84 right Insula             rh_Insula            
#> 85 right Occipital_Mid      rh_Occipital_Mid     
#> 86 right Occipital_Inf      rh_Occipital_Inf     
#> 87 right Parietal_Inf       rh_Parietal_Inf      
#> 88 right SupraMarginal      rh_SupraMarginal     
#> 89 right Angular            rh_Angular           
#> 90 right Heschl             rh_Heschl            
#> 91 right Temporal_Sup       rh_Temporal_Sup      
#> 92 right Temporal_Mid       rh_Temporal_Mid      
```
