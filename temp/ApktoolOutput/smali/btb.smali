.class public final Lbtb;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lbtb;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lbtb;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 973
    const/4 v0, 0x1

    return v0
.end method
