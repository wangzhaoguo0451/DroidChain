.class final Lepe;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/net/HttpTransaction;


# direct methods
.method constructor <init>(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lepe;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lepe;->a:Lcom/wandoujia/net/HttpTransaction;

    invoke-virtual {v0}, Lcom/wandoujia/net/HttpTransaction;->a()V

    .line 135
    return-void
.end method
