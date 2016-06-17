.class final Lfpn;
.super Ljava/lang/Object;
.source "LocalImageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfpm;


# direct methods
.method constructor <init>(Lfpm;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lfpn;->a:Lfpm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lfpn;->a:Lfpm;

    iget-object v2, v2, Lfpm;->a:Lfpk;

    invoke-static {v2}, Lfpk;->a(Lfpk;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lfpn;->a:Lfpm;

    iget-object v0, v0, Lfpm;->a:Lfpk;

    invoke-virtual {v0}, Lfpk;->c()V

    .line 123
    iget-object v0, p0, Lfpn;->a:Lfpm;

    iget-object v0, v0, Lfpm;->a:Lfpk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfpk;->a(Lfpk;J)J

    .line 125
    :cond_0
    return-void
.end method
