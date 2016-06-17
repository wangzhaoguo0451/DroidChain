.class public final Lbtn;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"


# instance fields
.field public synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->h(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 827
    :cond_0
    if-eqz p1, :cond_1

    .line 828
    iget-object v0, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->i(Lcom/nispok/snackbar/Snackbar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 830
    iget-object v0, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->a(Lcom/nispok/snackbar/Snackbar;J)J

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->j(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v2

    iget-object v1, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->k(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->b(Lcom/nispok/snackbar/Snackbar;J)J

    .line 834
    iget-object v0, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v1}, Lcom/nispok/snackbar/Snackbar;->l(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->c(Lcom/nispok/snackbar/Snackbar;J)V

    goto :goto_0
.end method
