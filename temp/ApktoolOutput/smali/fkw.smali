.class public final Lfkw;
.super Lflb;
.source "CommunityPublishedTopicListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lflb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method protected final c(II)Lflg;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lflg",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 28
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance v2, Lfjy;

    invoke-direct {v2}, Lfjy;-><init>()V

    .line 32
    invoke-virtual {v2}, Lfjy;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmm;

    iput-object v1, v0, Lfmm;->c:Ljava/lang/String;

    const-string v1, "created"

    iput-object v1, v0, Lfmm;->d:Ljava/lang/String;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    invoke-virtual {v0, v5}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 35
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->UPDATE_TITLE:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-interface {v0}, Lflg;->getTotal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 42
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
