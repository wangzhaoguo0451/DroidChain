.class final Lfpm;
.super Landroid/database/ContentObserver;
.source "LocalImageController.java"


# instance fields
.field final synthetic a:Lfpk;


# direct methods
.method constructor <init>(Lfpk;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lfpm;->a:Lfpk;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lfpm;->a:Lfpk;

    invoke-static {v0}, Lfpk;->b(Lfpk;)Lfps;

    move-result-object v0

    new-instance v1, Lfpn;

    invoke-direct {v1, p0}, Lfpn;-><init>(Lfpm;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lfps;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method
