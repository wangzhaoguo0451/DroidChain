.class public final Lbtc;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 1003
    iget-object v0, p0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->m(Lcom/nispok/snackbar/Snackbar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/view/View;)V

    .line 1010
    iget-object v0, p0, Lbtc;->a:Lcom/nispok/snackbar/Snackbar;

    new-instance v1, Lbtd;

    invoke-direct {v1, p0}, Lbtd;-><init>(Lbtc;)V

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    .line 1023
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 999
    return-void
.end method
