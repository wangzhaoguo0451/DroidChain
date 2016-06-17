.class final Ldam;
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
.field private synthetic a:Ldal;


# direct methods
.method constructor <init>(Ldal;)V
    .locals 0
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Ldam;->a:Ldal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Ldam;->a:Ldal;

    iget-object v0, v0, Ldal;->b:Ldaa;

    iget-object v0, v0, Ldaa;->d:Ldbn;

    iget-object v1, p0, Ldam;->a:Ldal;

    iget-object v1, v1, Ldal;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbn;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ldam;->a:Ldal;

    iget-object v1, v1, Ldal;->e:Ldat;

    invoke-virtual {v1, v0}, Ldat;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
