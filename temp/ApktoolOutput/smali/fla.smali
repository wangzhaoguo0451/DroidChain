.class public final Lfla;
.super Lflb;
.source "CommunityReplyListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lflb;-><init>()V

    .line 24
    iput-object p1, p0, Lfla;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfla;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(II)Lflg;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lflg",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    .line 35
    if-le p2, v0, :cond_0

    move p2, v0

    .line 39
    :cond_0
    new-instance v1, Ledf;

    iget-object v0, p0, Lfla;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ledf;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmg;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 42
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;

    .line 44
    const-string v1, "ugc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetch reply list count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;->getTotal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method
