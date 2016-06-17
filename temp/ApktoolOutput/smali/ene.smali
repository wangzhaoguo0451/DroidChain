.class public final Lene;
.super Ljava/lang/Object;
.source "LogUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/ANRWatchDog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lene;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lene;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    iget-object v0, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->b:Landroid/os/Handler;

    new-instance v1, Lenf;

    invoke-direct {v1, p0}, Lenf;-><init>(Lene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
