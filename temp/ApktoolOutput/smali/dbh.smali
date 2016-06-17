.class public final Ldbh;
.super Ljava/lang/Object;
.source "ImageCacheUtils.java"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJ)V

    sput-object v0, Ldbh;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ldbg;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    sget-object v0, Ldbh;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ldbi;

    invoke-direct {v1, p0, p1, p2}, Ldbi;-><init>(Ldbg;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
