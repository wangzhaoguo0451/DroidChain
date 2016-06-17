.class final Ldef;
.super Ljava/lang/Object;
.source "JupiterFavoritable.java"

# interfaces
.implements Lagt;


# instance fields
.field private synthetic a:[Z

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Ldef;->a:[Z

    iput-object p2, p0, Ldef;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Ldef;->a:[Z

    aput-boolean v1, v0, v1

    .line 111
    iget-object v0, p0, Ldef;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 112
    return-void
.end method
