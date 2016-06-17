.class final Ldhh;
.super Ljava/lang/Object;
.source "AppInstalledFragment.java"

# interfaces
.implements Ledr;


# instance fields
.field final synthetic a:Ldhg;


# direct methods
.method constructor <init>(Ldhg;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Ldhh;->a:Ldhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldhi;

    invoke-direct {v1, p0, p1}, Ldhi;-><init>(Ldhh;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method
