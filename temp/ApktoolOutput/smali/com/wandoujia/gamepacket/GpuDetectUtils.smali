.class public final Lcom/wandoujia/gamepacket/GpuDetectUtils;
.super Ljava/lang/Object;
.source "GpuDetectUtils.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a:Z

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    sget-boolean v0, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static synthetic a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    sget-boolean v0, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x1f01

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcuy;

    invoke-direct {v1, v0}, Lcuy;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a:Z

    :cond_0
    return-void
.end method
