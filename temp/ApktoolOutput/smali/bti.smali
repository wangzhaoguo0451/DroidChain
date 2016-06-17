.class final Lbti;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nispok/snackbar/Snackbar;

.field private synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    iput-object p2, p0, Lbti;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lbth;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    iget-boolean v1, v0, Lcom/nispok/snackbar/Snackbar;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/nispok/snackbar/Snackbar;->j:Z

    if-nez v1, :cond_0

    .line 57
    iput-boolean v2, v0, Lcom/nispok/snackbar/Snackbar;->e:Z

    .line 58
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lbth;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 60
    iget-object v0, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    iput-boolean v2, v0, Lcom/nispok/snackbar/Snackbar;->d:Z

    .line 61
    iget-object v0, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbti;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/app/Activity;)V

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lbth;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 67
    iget-object v0, p0, Lbti;->a:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lbti;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
