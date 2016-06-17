.class public final Lcqp;
.super Ljava/lang/Object;
.source "CachedThreadPoolExecutorWithCapacity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcqr;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcqr;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcqp;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcqp;->b:Lcqr;

    iput-object p3, p0, Lcqp;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcqp;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 232
    iget-object v0, p0, Lcqp;->b:Lcqr;

    iget-object v1, p0, Lcqp;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcqr;->a(Lcqr;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method
