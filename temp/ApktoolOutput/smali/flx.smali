.class public final Lflx;
.super Lfxx;
.source "GetCommunityActivityListBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lfxx;-><init>()V

    .line 18
    iput-object p1, p0, Lflx;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lflx;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 20
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://group.wandoujia.com/api/v1/activities/list"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "group_id"

    iget-object v1, p0, Lflx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Lfxx;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 26
    return-void
.end method
