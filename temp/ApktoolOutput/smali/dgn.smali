.class public final Ldgn;
.super Landroid/os/Handler;
.source "TouchImageView.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 513
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldgn;->a:Ljava/lang/ref/WeakReference;

    .line 514
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Ldgn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->performClick()Z

    .line 519
    iget-object v0, p0, Ldgn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->p(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Ldgn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->p(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v0, p0, Ldgn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 521
    :cond_0
    return-void
.end method
