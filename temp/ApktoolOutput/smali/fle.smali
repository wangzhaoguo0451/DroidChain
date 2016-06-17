.class public final Lfle;
.super Lflb;
.source "CommunityUserGroupListFetcher.java"


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

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lflb;-><init>()V

    .line 20
    const-string v0, "game"

    iput-object v0, p0, Lfle;->f:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lfle;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lfle;->f:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfle;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfle;->f:Ljava/lang/String;

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
            "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v1, Lfjg;

    invoke-direct {v1}, Lfjg;-><init>()V

    .line 38
    invoke-virtual {v1}, Lfjg;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmc;

    iget-object v2, p0, Lfle;->f:Ljava/lang/String;

    iput-object v2, v0, Lfmc;->e:Ljava/lang/String;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfmc;->c:Ljava/lang/String;

    iget-object v2, p0, Lfle;->a:Ljava/lang/String;

    iput-object v2, v0, Lfmc;->d:Ljava/lang/String;

    iput p1, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 41
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
