.class public final Lecw;
.super Ljava/lang/Object;
.source "PullToZoomRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Z

.field public c:F

.field public d:J

.field public final synthetic e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lecw;->b:Z

    .line 166
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 177
    iget-boolean v0, p0, Lecw;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lecw;->c:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v2, p0, Lecw;->d:J

    long-to-float v1, v2

    sub-float/2addr v0, v1

    iget-wide v2, p0, Lecw;->a:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 180
    iget v1, p0, Lecw;->c:F

    iget v2, p0, Lecw;->c:F

    sub-float/2addr v2, v4

    invoke-static {}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->l()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 182
    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    .line 183
    iget-object v1, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->a(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->b(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    iget-object v2, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->a(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v1, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->c(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setScale(F)V

    .line 189
    iget-object v0, p0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-virtual {v0, p0}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lecw;->b:Z

    goto :goto_0
.end method
