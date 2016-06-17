.class final Ldav;
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
.field private synthetic a:Ldau;


# direct methods
.method constructor <init>(Ldau;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Ldav;->a:Ldau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, Ldav;->a:Ldau;

    iget-object v0, v0, Ldau;->b:Ldaa;

    iget-object v0, v0, Ldaa;->d:Ldbn;

    iget-object v1, p0, Ldav;->a:Ldau;

    iget-object v1, v1, Ldau;->a:Ljava/lang/String;

    iget-object v2, p0, Ldav;->a:Ldau;

    iget v2, v2, Ldau;->c:I

    iget-object v3, p0, Ldav;->a:Ldau;

    iget v3, v3, Ldau;->d:I

    invoke-virtual {v0, v1, v2, v3}, Ldbn;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ldav;->a:Ldau;

    iget-object v1, v1, Ldau;->e:Ldat;

    invoke-virtual {v1, v0}, Ldat;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
