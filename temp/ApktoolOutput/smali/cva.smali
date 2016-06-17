.class final Lcva;
.super Ljava/lang/Object;
.source "GpuDetectUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcuz;


# direct methods
.method constructor <init>(Lcuz;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcva;->a:Lcuz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcva;->a:Lcuz;

    iget-object v0, v0, Lcuz;->a:Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;

    invoke-virtual {v0}, Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcva;->a:Lcuz;

    iget-object v1, v1, Lcuz;->a:Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method
