.class final Ldac;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/graphics/Bitmap;

.field private synthetic c:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Ldac;->c:Ldaa;

    iput-object p2, p0, Ldac;->a:Ljava/lang/String;

    iput-object p3, p0, Ldac;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Ldac;->c:Ldaa;

    iget-boolean v0, v0, Ldaa;->k:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Ldac;->c:Ldaa;

    iget-object v0, v0, Ldaa;->e:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Ldac;->c:Ldaa;

    iget-object v1, p0, Ldac;->a:Ljava/lang/String;

    iget-object v2, p0, Ldac;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Ldaa;->a(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
