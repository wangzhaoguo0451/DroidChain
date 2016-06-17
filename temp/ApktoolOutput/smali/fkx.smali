.class public final Lfkx;
.super Lflb;
.source "CommunityRankingListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lflb;-><init>()V

    .line 18
    iput-object p1, p0, Lfkx;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lfkx;->f:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfkx;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
            "Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lfjo;

    invoke-direct {v1}, Lfjo;-><init>()V

    .line 31
    invoke-virtual {v1}, Lfjo;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmf;

    iget-object v2, p0, Lfkx;->f:Ljava/lang/String;

    iput-object v2, v0, Lfmf;->d:Ljava/lang/String;

    iget-object v2, p0, Lfkx;->a:Ljava/lang/String;

    iput-object v2, v0, Lfmf;->c:Ljava/lang/String;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    .line 33
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    return-object v0
.end method
