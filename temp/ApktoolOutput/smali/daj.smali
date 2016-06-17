.class final Ldaj;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


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
    .line 470
    iput-object p1, p0, Ldaj;->c:Ldaa;

    iput-object p2, p0, Ldaj;->a:Ljava/lang/String;

    iput-object p3, p0, Ldaj;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Ldaj;->c:Ldaa;

    iget-object v0, v0, Ldaa;->a:Ldbj;

    iget-object v1, p0, Ldaj;->a:Ljava/lang/String;

    iget-object v2, p0, Ldaj;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Ldbh;->a(Ldbg;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
