.class public final Lbsy;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lbsy;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lbsy;->a:Lcom/nispok/snackbar/Snackbar;

    iget-boolean v0, v1, Lcom/nispok/snackbar/Snackbar;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, v1, Lcom/nispok/snackbar/Snackbar;->k:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v0}, Lcom/nispok/snackbar/Snackbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_0
    return-void
.end method
