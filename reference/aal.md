# AAL Cortical Atlas

Brain atlas for the original Automated Anatomical Labeling parcellation
(Tzourio-Mazoyer et al. 2002).

## Usage

``` r
aal()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Tzourio-Mazoyer N, Landeau B, Papathanassiou D, et al. (2002). Automated
Anatomical Labeling of Activations in SPM Using a Macroscopic Anatomical
Parcellation of the MNI MRI Single-Subject Brain. *NeuroImage*,
15(1):273-289.
[doi:10.1006/nimg.2001.0978](https://doi.org/10.1006/nimg.2001.0978)

## See also

Other ggseg_atlases:
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

## Examples

``` r
aal()
#> 
#> ── aal ggseg atlas ─────────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 82
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 82 × 3
#>    hemi  region       label          
#>    <chr> <chr>        <chr>          
#>  1 left  LH_region_1  lh_LH_region_1 
#>  2 left  LH_region_2  lh_LH_region_2 
#>  3 left  LH_region_3  lh_LH_region_3 
#>  4 left  LH_region_4  lh_LH_region_4 
#>  5 left  LH_region_5  lh_LH_region_5 
#>  6 left  LH_region_6  lh_LH_region_6 
#>  7 left  LH_region_7  lh_LH_region_7 
#>  8 left  LH_region_8  lh_LH_region_8 
#>  9 left  LH_region_9  lh_LH_region_9 
#> 10 left  LH_region_10 lh_LH_region_10
#> 11 left  LH_region_11 lh_LH_region_11
#> 12 left  LH_region_12 lh_LH_region_12
#> 13 left  LH_region_13 lh_LH_region_13
#> 14 left  LH_region_14 lh_LH_region_14
#> 15 left  LH_region_15 lh_LH_region_15
#> 16 left  LH_region_16 lh_LH_region_16
#> 17 left  LH_region_17 lh_LH_region_17
#> 18 left  LH_region_18 lh_LH_region_18
#> 19 left  LH_region_19 lh_LH_region_19
#> 20 left  LH_region_20 lh_LH_region_20
#> 21 left  LH_region_21 lh_LH_region_21
#> 22 left  LH_region_22 lh_LH_region_22
#> 23 left  LH_region_23 lh_LH_region_23
#> 24 left  LH_region_24 lh_LH_region_24
#> 25 left  LH_region_25 lh_LH_region_25
#> 26 left  LH_region_26 lh_LH_region_26
#> 27 left  LH_region_27 lh_LH_region_27
#> 28 left  LH_region_28 lh_LH_region_28
#> 29 left  LH_region_29 lh_LH_region_29
#> 30 left  LH_region_30 lh_LH_region_30
#> 31 left  LH_region_31 lh_LH_region_31
#> 32 left  LH_region_32 lh_LH_region_32
#> 33 left  LH_region_33 lh_LH_region_33
#> 34 left  LH_region_34 lh_LH_region_34
#> 35 left  LH_region_35 lh_LH_region_35
#> 36 left  LH_region_36 lh_LH_region_36
#> 37 left  LH_region_37 lh_LH_region_37
#> 38 left  LH_region_38 lh_LH_region_38
#> 39 left  LH_region_39 lh_LH_region_39
#> 40 left  LH_region_40 lh_LH_region_40
#> 41 left  LH_region_41 lh_LH_region_41
#> 42 right RH_region_1  rh_RH_region_1 
#> 43 right RH_region_2  rh_RH_region_2 
#> 44 right RH_region_3  rh_RH_region_3 
#> 45 right RH_region_4  rh_RH_region_4 
#> 46 right RH_region_5  rh_RH_region_5 
#> 47 right RH_region_6  rh_RH_region_6 
#> 48 right RH_region_7  rh_RH_region_7 
#> 49 right RH_region_8  rh_RH_region_8 
#> 50 right RH_region_9  rh_RH_region_9 
#> 51 right RH_region_10 rh_RH_region_10
#> 52 right RH_region_11 rh_RH_region_11
#> 53 right RH_region_12 rh_RH_region_12
#> 54 right RH_region_13 rh_RH_region_13
#> 55 right RH_region_14 rh_RH_region_14
#> 56 right RH_region_15 rh_RH_region_15
#> 57 right RH_region_16 rh_RH_region_16
#> 58 right RH_region_17 rh_RH_region_17
#> 59 right RH_region_18 rh_RH_region_18
#> 60 right RH_region_19 rh_RH_region_19
#> 61 right RH_region_20 rh_RH_region_20
#> 62 right RH_region_21 rh_RH_region_21
#> 63 right RH_region_22 rh_RH_region_22
#> 64 right RH_region_23 rh_RH_region_23
#> 65 right RH_region_24 rh_RH_region_24
#> 66 right RH_region_25 rh_RH_region_25
#> 67 right RH_region_26 rh_RH_region_26
#> 68 right RH_region_27 rh_RH_region_27
#> 69 right RH_region_28 rh_RH_region_28
#> 70 right RH_region_29 rh_RH_region_29
#> 71 right RH_region_30 rh_RH_region_30
#> 72 right RH_region_31 rh_RH_region_31
#> 73 right RH_region_32 rh_RH_region_32
#> 74 right RH_region_33 rh_RH_region_33
#> 75 right RH_region_34 rh_RH_region_34
#> 76 right RH_region_35 rh_RH_region_35
#> 77 right RH_region_36 rh_RH_region_36
#> 78 right RH_region_37 rh_RH_region_37
#> 79 right RH_region_38 rh_RH_region_38
#> 80 right RH_region_39 rh_RH_region_39
#> 81 right RH_region_40 rh_RH_region_40
#> 82 right RH_region_41 rh_RH_region_41
```
