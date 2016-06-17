.class final enum Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$3;
.super Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
.source "PhoenixCachedHttpResponse.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;-><init>(Ljava/lang/String;ILd;)V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lhvl;)V
    .locals 3
    .parameter

    .prologue
    .line 277
    const-string v0, "PhoenixCachedHttpResponse"

    const-string v1, "No op listener - write finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return-void
.end method
