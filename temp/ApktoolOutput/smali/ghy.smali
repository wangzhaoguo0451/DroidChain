.class public final Lghy;
.super Ljava/lang/Object;
.source "VideoPlayHtml5Fragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lghy;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lghy;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lghy;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    .line 324
    :goto_0
    return v2

    .line 322
    :cond_0
    iget-object v0, p0, Lghy;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    goto :goto_0
.end method
