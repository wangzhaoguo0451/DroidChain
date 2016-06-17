.class public final Ldyr;
.super Ldys;
.source "GetDailyRecommendRequestBuilder.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ldys;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://games.wandoujia.com/api/v1/game/finder/recommend/get"

    return-object v0
.end method

.method protected final setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Ldys;->setParams(Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;)V

    .line 27
    iget-object v0, p0, Ldyr;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "date"

    iget-object v1, p0, Ldyr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder$Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
