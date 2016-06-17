.class public final Ledj;
.super Ljava/lang/Object;
.source "BlurManager.java"


# static fields
.field static final a:I

.field static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 19
    sput v0, Ledj;->a:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ledj;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ledj;->c:Landroid/graphics/Bitmap;

    .line 26
    new-instance v0, Ledt;

    invoke-direct {v0}, Ledt;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic a(Ledj;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Ledj;->c:Landroid/graphics/Bitmap;

    int-to-float v1, p1

    invoke-static {v0, v1}, Ledt;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ledm;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Ledk;

    invoke-direct {v0, p0, p1}, Ledk;-><init>(Landroid/graphics/Bitmap;Ledm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
