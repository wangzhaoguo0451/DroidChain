.class final enum Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener$1;
.super Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;
.source "PhoenixCachedHttpResponse.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/PhoenixCachedHttpResponse$FutureListener;-><init>(Ljava/lang/String;ILd;)V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lhvl;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-interface {p1}, Lhvl;->c()Lhvg;

    move-result-object v0

    invoke-interface {v0}, Lhvg;->g()Lhvl;

    .line 258
    return-void
.end method
