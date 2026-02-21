describe("aal2 atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(aal2(), "ggseg_atlas")
    expect_s3_class(aal2(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(aal2()))
  })

  it("has 41 regions per hemisphere", {
    expect_equal(sum(aal2()$core$hemi == "left"), 41)
    expect_equal(sum(aal2()$core$hemi == "right"), 41)
  })

  it("has anatomical region names", {
    expect_true("Precentral" %in% aal2()$core$region)
    expect_true("Frontal_Sup_2" %in% aal2()$core$region)
    expect_true("OFCmed" %in% aal2()$core$region)
    expect_false(any(grepl("region_\\d+", aal2()$core$region)))
  })

  it("palette covers all labels", {
    expect_true(all(aal2()$core$label %in% names(aal2()$palette)))
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = aal2(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = aal2()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("aal2-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = aal2())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})


describe("aal3_cortical atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(aal3_cortical(), "ggseg_atlas")
    expect_s3_class(aal3_cortical(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(aal3_cortical()))
  })

  it("has expected region count", {
    expect_equal(nrow(aal3_cortical()$core), 92)
  })

  it("palette covers all labels", {
    expect_true(all(aal3_cortical()$core$label %in% names(aal3_cortical()$palette)))
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = aal3_cortical(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = aal3_cortical()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("aal3-cortical-2d", p)
  })
})


describe("aal3_subcortical atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(aal3_subcortical(), "ggseg_atlas")
    expect_s3_class(aal3_subcortical(), "subcortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(aal3_subcortical()))
  })

  it("has expected region count", {
    expect_equal(nrow(aal3_subcortical()$core), 43)
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = aal3_subcortical(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = aal3_subcortical()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("aal3-subcortical-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = aal3_subcortical())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})


describe("aal3_cerebellum atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(aal3_cerebellum(), "ggseg_atlas")
    expect_s3_class(aal3_cerebellum(), "subcortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(aal3_cerebellum()))
  })

  it("has expected region count", {
    expect_equal(nrow(aal3_cerebellum()$core), 26)
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = aal3_cerebellum(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = aal3_cerebellum()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("aal3-cerebellum-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = aal3_cerebellum())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
