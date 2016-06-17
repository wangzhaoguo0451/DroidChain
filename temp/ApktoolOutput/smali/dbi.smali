.class final Ldbi;
.super Ljava/lang/Object;
.source "ImageCacheUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldbg;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ldbg;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Ldbi;->a:Ldbg;

    iput-object p2, p0, Ldbi;->b:Ljava/lang/String;

    iput-object p3, p0, Ldbi;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Ldbi;->a:Ldbg;

    iget-object v1, p0, Ldbi;->b:Ljava/lang/String;

    iget-object v2, p0, Ldbi;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ldbg;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 24
    return-void
.end method
