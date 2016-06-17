.class public final Lfmb;
.super Lfxx;
.source "GetCommunityImageSizeBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lfxx;-><init>()V

    .line 17
    iput-object p1, p0, Lfmb;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "http://group.wandoujia.com/api/v1/file/image/get_size"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    const-string v0, "dpi"

    iget-object v1, p0, Lfmb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Lfxx;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 29
    return-void
.end method
