.class public final Lagv;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# instance fields
.field private a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lagl;

    invoke-direct {v0, p1}, Lagl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lagv;->a:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lags",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/volley/Request;->i:Z

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lagv;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lagm;

    invoke-direct {v1, p1, p2, p3}, Lagm;-><init>(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lags;->a(Lcom/android/volley/VolleyError;)Lags;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lagv;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lagm;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lagm;-><init>(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
