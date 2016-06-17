.class public final Lcuz;
.super Ljava/lang/Object;
.source "GpuDetectUtils.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic a:Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcuz;->a:Lcom/wandoujia/gamepacket/GpuDetectUtils$GpuInfoFetcherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p1}, Lcom/wandoujia/gamepacket/GpuDetectUtils;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcva;

    invoke-direct {v1, p0}, Lcva;-><init>(Lcuz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
