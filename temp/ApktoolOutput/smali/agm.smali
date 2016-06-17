.class final Lagm;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/android/volley/Request;

.field private final b:Lags;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lags;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lagm;->a:Lcom/android/volley/Request;

    .line 84
    iput-object p2, p0, Lagm;->b:Lags;

    .line 85
    iput-object p3, p0, Lagm;->c:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lagm;->b:Lags;

    iget-object v0, v0, Lags;->c:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    iget-object v1, p0, Lagm;->b:Lags;

    iget-object v1, v1, Lags;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/Object;)V

    .line 106
    :cond_2
    :goto_2
    iget-object v0, p0, Lagm;->b:Lags;

    iget-boolean v0, v0, Lags;->d:Z

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 113
    :goto_3
    iget-object v0, p0, Lagm;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lagm;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_4
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    iget-object v1, p0, Lagm;->b:Lags;

    iget-object v1, v1, Lags;->c:Lcom/android/volley/VolleyError;

    iget-object v2, v0, Lcom/android/volley/Request;->d:Lagt;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/volley/Request;->d:Lagt;

    invoke-interface {v0, v1}, Lagt;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lagm;->a:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    goto :goto_3
.end method
