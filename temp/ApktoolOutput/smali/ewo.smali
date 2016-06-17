.class public final Lewo;
.super Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;
.source "AppCommentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
        "<",
        "Lewr;",
        "Lcom/wandoujia/p4/app/detail/model/CommentSummary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lewr;

    invoke-direct {v0}, Lewr;-><init>()V

    new-instance v1, Lewp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lewp;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;-><init>(Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;Lcom/wandoujia/rpc/http/processor/Processor;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 24
    invoke-super {p0}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 25
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wdj_auth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-object v0
.end method
