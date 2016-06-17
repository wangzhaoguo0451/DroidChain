.class final Ldao;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldan;


# direct methods
.method constructor <init>(Ldan;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Ldao;->a:Ldan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Ldao;->a:Ldan;

    iget-object v0, v0, Ldan;->b:Ldaa;

    iget-object v0, v0, Ldaa;->d:Ldbn;

    iget-object v1, p0, Ldao;->a:Ldan;

    iget-object v1, v1, Ldan;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbn;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ldao;->a:Ldan;

    iget-object v1, v1, Ldan;->e:Ldat;

    invoke-virtual {v1, v0}, Ldat;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
