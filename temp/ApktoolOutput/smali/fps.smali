.class final Lfps;
.super Landroid/os/Handler;
.source "LocalImageController.java"


# instance fields
.field private synthetic a:Lfpk;


# direct methods
.method public constructor <init>(Lfpk;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lfps;->a:Lfpk;

    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lfps;->a:Lfpk;

    invoke-static {v0}, Lfpk;->c(Lfpk;)V

    .line 384
    return-void
.end method
