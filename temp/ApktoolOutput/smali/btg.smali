.class public final Lbtg;
.super Landroid/view/View;
.source "SnackbarHelperChildViewJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtg;->setSaveEnabled(Z)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbtg;->setWillNotDraw(Z)V

    .line 15
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbtg;->setVisibility(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public final onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 22
    invoke-virtual {p0}, Lbtg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/nispok/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/nispok/snackbar/Snackbar;

    iget-object v1, v0, Lcom/nispok/snackbar/Snackbar;->l:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nispok/snackbar/Snackbar;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    return-void
.end method
