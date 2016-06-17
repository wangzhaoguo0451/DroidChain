.class public final Lcqq;
.super Ljava/lang/Object;
.source "CachedThreadPoolExecutorWithCapacity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcqr;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcqr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcqq;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcqq;->b:Lcqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcqq;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 256
    iget-object v0, p0, Lcqq;->b:Lcqr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcqr;->a(Lcqr;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method
