.class final Ledk;
.super Ljava/lang/Object;
.source "BlurManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ledm;

.field private synthetic b:Landroid/graphics/Bitmap;

.field private synthetic c:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ledm;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Ledk;->b:Landroid/graphics/Bitmap;

    const/16 v0, 0xc

    iput v0, p0, Ledk;->c:I

    iput-object p2, p0, Ledk;->a:Ledm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Ledk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ledk;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledk;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    new-instance v1, Ledj;

    invoke-direct {v1, v0}, Ledj;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    iget v2, p0, Ledk;->c:I

    invoke-static {v1, v2}, Ledj;->a(Ledj;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    iget-object v0, p0, Ledk;->a:Ledm;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Ledl;

    invoke-direct {v2, p0, v1}, Ledl;-><init>(Ledk;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    return-void

    .line 48
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
