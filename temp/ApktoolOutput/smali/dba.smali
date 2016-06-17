.class final Ldba;
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
.field private synthetic a:Ldaz;


# direct methods
.method constructor <init>(Ldaz;)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Ldba;->a:Ldaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Ldba;->a:Ldaz;

    iget-object v0, v0, Ldaz;->b:Ldaa;

    iget-object v0, v0, Ldaa;->d:Ldbn;

    iget-object v1, p0, Ldba;->a:Ldaz;

    iget-object v1, v1, Ldaz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbn;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ldba;->a:Ldaz;

    iget-object v1, v1, Ldaz;->e:Ldat;

    invoke-virtual {v1, v0}, Ldat;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
