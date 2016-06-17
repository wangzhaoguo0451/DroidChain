.class public final Lfkv;
.super Lflb;
.source "CommunityNotificationFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lflb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
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
            "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v1, Lfjk;

    invoke-direct {v1}, Lfjk;-><init>()V

    .line 18
    invoke-virtual {v1}, Lfjk;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfme;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 19
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    return-object v0
.end method
