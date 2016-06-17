.class final Lbtd;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbtc;


# direct methods
.method constructor <init>(Lbtc;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lbtd;->a:Lbtc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Lbtd;->a:Lbtc;

    iget-object v0, v0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->d(Lcom/nispok/snackbar/Snackbar;J)J

    .line 1015
    iget-object v0, p0, Lbtd;->a:Lbtc;

    iget-object v0, v0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->l(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lbtd;->a:Lbtc;

    iget-object v0, v0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbtd;->a:Lbtc;

    iget-object v1, v1, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->e(Lcom/nispok/snackbar/Snackbar;J)J

    .line 1018
    :cond_0
    iget-object v0, p0, Lbtd;->a:Lbtc;

    iget-object v0, v0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->n(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lbtd;->a:Lbtc;

    iget-object v0, v0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->o(Lcom/nispok/snackbar/Snackbar;)V

    .line 1021
    :cond_1
    return-void
.end method
