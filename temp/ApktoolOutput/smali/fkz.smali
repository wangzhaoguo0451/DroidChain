.class public final Lfkz;
.super Lflb;
.source "CommunityReplyListByAfterIdFetcher.java"


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
.field public a:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lflb;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfkz;->g:Z

    .line 33
    iput-object p1, p0, Lfkz;->f:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;
    .locals 3
    .parameter

    .prologue
    .line 74
    new-instance v1, Ledf;

    iget-object v0, p0, Lfkz;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Ledf;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmg;

    const-string v2, "newest"

    iput-object v2, v0, Lfmg;->c:Ljava/lang/String;

    iput-object p1, v0, Lfmg;->d:Ljava/lang/String;

    const/16 v2, 0xf

    iput v2, v0, Lfiq;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 78
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfkz;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(II)Lflg;
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    new-instance v1, Ledf;

    iget-object v0, p0, Lfkz;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Ledf;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lfkz;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmg;

    const-string v2, "oldest"

    iput-object v2, v0, Lfmg;->c:Ljava/lang/String;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    invoke-virtual {v0, v3}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 57
    :goto_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyInfo;

    .line 59
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

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-object v0

    .line 49
    :cond_0
    iget-boolean v0, p0, Lfkz;->g:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmg;

    iput-boolean v3, v0, Lfmg;->f:Z

    .line 51
    iput-boolean v4, p0, Lfkz;->g:Z

    .line 53
    :cond_1
    invoke-virtual {v1}, Ledf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmg;

    const-string v2, "oldest"

    iput-object v2, v0, Lfmg;->c:Ljava/lang/String;

    iget-object v2, p0, Lfkz;->a:Ljava/lang/String;

    iput-object v2, v0, Lfmg;->d:Ljava/lang/String;

    iput p2, v0, Lfiq;->b:I

    invoke-virtual {v0, v3}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    goto :goto_0
.end method
