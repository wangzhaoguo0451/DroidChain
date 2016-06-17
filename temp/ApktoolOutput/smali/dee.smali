.class final Ldee;
.super Ljava/lang/Object;
.source "JupiterFavoritable.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:[Z

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Ldee;->a:[Z

    iput-object p2, p0, Ldee;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    iget-object v2, p0, Ldee;->a:[Z

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, -0xc8

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    iget-object v0, p0, Ldee;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
