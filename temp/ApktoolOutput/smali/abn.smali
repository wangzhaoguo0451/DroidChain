.class final Labn;
.super Ljava/lang/Thread;
.source "Utils.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 268
    return-void
.end method
