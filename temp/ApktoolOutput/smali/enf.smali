.class final Lenf;
.super Ljava/lang/Object;
.source "LogUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lene;


# direct methods
.method constructor <init>(Lene;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lenf;->a:Lene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lenf;->a:Lene;

    iget-object v0, v0, Lene;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_RESPONDED:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    iput-object v1, v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog;->a:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 111
    return-void
.end method
