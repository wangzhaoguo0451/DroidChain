.class public final Labc;
.super Ljava/lang/Object;
.source "Picasso.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/alipay/squareup/picasso/Loader;

.field public c:Ljava/util/concurrent/ExecutorService;

.field public d:Lcom/alipay/squareup/picasso/Cache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    if-nez p1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Labc;->a:Landroid/content/Context;

    .line 562
    return-void
.end method
