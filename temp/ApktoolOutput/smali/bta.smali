.class public final Lbta;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->f(Lcom/nispok/snackbar/Snackbar;)Lbtk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->b(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->c(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->f(Lcom/nispok/snackbar/Snackbar;)Lbtk;

    move-result-object v0

    iget-object v1, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lbtk;->a(Lcom/nispok/snackbar/Snackbar;)V

    .line 788
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->d(Lcom/nispok/snackbar/Snackbar;)Z

    .line 791
    :cond_0
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->e(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lbta;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 794
    :cond_1
    return-void
.end method
