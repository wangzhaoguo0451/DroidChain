.class final Ldhi;
.super Ljava/lang/Object;
.source "AppInstalledFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Ldhh;


# direct methods
.method constructor <init>(Ldhh;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Ldhi;->b:Ldhh;

    iput-object p2, p0, Ldhi;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const v2, 0x7f0c0023

    .line 545
    iget-object v0, p0, Ldhi;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ldhi;->b:Ldhh;

    iget-object v0, v0, Ldhh;->a:Ldhg;

    invoke-virtual {v0}, Ldhg;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Ldhi;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    iget-object v0, p0, Ldhi;->b:Ldhh;

    iget-object v0, v0, Ldhh;->a:Ldhg;

    invoke-virtual {v0}, Ldhg;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->i()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00ca

    invoke-virtual {v1, v0, v2, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0
.end method
