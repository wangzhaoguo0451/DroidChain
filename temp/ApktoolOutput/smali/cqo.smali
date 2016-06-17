.class public final Lcqo;
.super Ljava/lang/Object;
.source "CachedThreadPoolExecutorWithCapacity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/Callable;

.field private synthetic b:Lcqr;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcqr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcqo;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcqo;->b:Lcqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcqo;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcqo;->b:Lcqr;

    invoke-static {v1, v0}, Lcqr;->a(Lcqr;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method
