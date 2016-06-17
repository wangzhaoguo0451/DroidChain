.class final Laoi;
.super Lauf;
.source "OkHttpNetworkFetcher.java"


# instance fields
.field final synthetic a:Lbws;

.field private synthetic b:Laoh;


# direct methods
.method constructor <init>(Laoh;Lbws;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Laoi;->b:Laoh;

    iput-object p2, p0, Laoi;->a:Lbws;

    invoke-direct {p0}, Lauf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Laoi;->a:Lbws;

    invoke-virtual {v0}, Lbws;->a()V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Laoi;->b:Laoh;

    iget-object v0, v0, Laoh;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Laoj;

    invoke-direct {v1, p0}, Laoj;-><init>(Laoi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
