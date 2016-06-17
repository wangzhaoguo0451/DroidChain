.class public Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;
.super Landroid/opengl/GLSurfaceView;
.source "GpuDetectUtils.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lcuz;

    invoke-direct {v0, p0}, Lcuz;-><init>(Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Lcuz;

    invoke-direct {v0, p0}, Lcuz;-><init>(Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 95
    return-void
.end method
