.class public final Lequ;
.super Lcom/android/volley/Request;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Lagh;

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lagh;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lagt;)V

    .line 445
    iput-object p1, p0, Lequ;->l:Lagh;

    .line 446
    iput-object p2, p0, Lequ;->m:Ljava/lang/String;

    .line 447
    return-void
.end method


# virtual methods
.method protected final a(Lagp;)Lags;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    return-void
.end method

.method public final b()Z
    .locals 6

    .prologue
    .line 452
    iget-object v0, p0, Lequ;->l:Lagh;

    iget-object v1, p0, Lequ;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lagh;->a(Ljava/lang/String;)Lagi;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lagi;->e:J

    .line 456
    iget-object v1, p0, Lequ;->l:Lagh;

    iget-object v2, p0, Lequ;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lagh;->a(Ljava/lang/String;Lagi;)V

    .line 458
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
