.class public final Lfku;
.super Lflb;
.source "CommunityGroupListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lflb;-><init>()V

    .line 15
    const-string v0, "game"

    iput-object v0, p0, Lfku;->a:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lfku;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(II)Lflg;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lflg",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lfjb;

    invoke-direct {v1}, Lfjb;-><init>()V

    .line 30
    const-string v0, "balloting"

    iget-object v2, p0, Lfku;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v1}, Lfjb;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lflz;

    iget-object v2, p0, Lfku;->a:Ljava/lang/String;

    iput-object v2, v0, Lflz;->d:Ljava/lang/String;

    .line 35
    :goto_0
    invoke-virtual {v1}, Lfjb;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lflz;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 36
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lfjb;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lflz;

    iget-object v2, p0, Lfku;->a:Ljava/lang/String;

    iput-object v2, v0, Lflz;->c:Ljava/lang/String;

    goto :goto_0
.end method
