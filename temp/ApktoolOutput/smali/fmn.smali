.class public final Lfmn;
.super Lfxm;
.source "GetUnReadMsgCountRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lfxm;-><init>()V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfmn;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "http://group.wandoujia.com/api/v1//notifications/news_count"

    return-object v0
.end method
