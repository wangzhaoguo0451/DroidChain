.class final Leqa;
.super Ljava/lang/Object;
.source "HttpTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lepz;


# direct methods
.method constructor <init>(Lepz;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Leqa;->a:Lepz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Leqa;->a:Lepz;

    iget-object v0, v0, Lepz;->b:Lcom/wandoujia/net/HttpTransaction;

    iget-object v0, v0, Lcom/wandoujia/net/HttpTransaction;->i:Lepq;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Leqa;->a:Lepz;

    iget-object v0, v0, Lepz;->b:Lcom/wandoujia/net/HttpTransaction;

    invoke-static {v0}, Lcom/wandoujia/net/HttpTransaction;->c(Lcom/wandoujia/net/HttpTransaction;)V

    .line 419
    iget-object v0, p0, Leqa;->a:Lepz;

    iget-object v0, v0, Lepz;->a:Landroid/os/Handler;

    iget-object v1, p0, Leqa;->a:Lepz;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Leqa;->a:Lepz;

    const/4 v1, 0x0

    iput-object v1, v0, Lepz;->a:Landroid/os/Handler;

    goto :goto_0
.end method
