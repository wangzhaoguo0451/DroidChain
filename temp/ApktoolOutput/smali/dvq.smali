.class public final Ldvq;
.super Ljava/lang/Object;
.source "TopicFragment.java"

# interfaces
.implements Ldvk;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldvq;->a:Ljava/lang/ref/WeakReference;

    .line 316
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Ldvq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    .line 321
    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030179

    invoke-static {v1, v2}, Ld;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 327
    new-instance v2, Ldvr;

    invoke-direct {v2, v1}, Ldvr;-><init>(Landroid/view/ViewGroup;)V

    .line 334
    invoke-virtual {v2, p1}, Lert;->a(Ljava/lang/Object;)V

    .line 335
    invoke-static {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->d(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;

    move-result-object v1

    invoke-virtual {v1, v2}, Lhaz;->b(Lert;)V

    .line 336
    invoke-static {v0}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->e(Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;)Lhaz;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    goto :goto_0
.end method
