.class public final Lfkt;
.super Lflb;
.source "CommunityAllMembersListFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflb",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityUserModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lflb;-><init>()V

    .line 24
    iput-object p1, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 25
    iput v0, p0, Lfkt;->f:I

    .line 26
    iput-boolean v0, p0, Lfkt;->g:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method protected final c(II)Lflg;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lflg",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityUserModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    iput v6, p0, Lfkt;->f:I

    .line 39
    iput-boolean v6, p0, Lfkt;->g:Z

    .line 41
    :cond_0
    new-instance v1, Lfji;

    invoke-direct {v1}, Lfji;-><init>()V

    .line 42
    invoke-virtual {v1}, Lfji;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmd;

    const-string v2, "GROUP_MEMBER"

    iput-object v2, v0, Lfmd;->d:Ljava/lang/String;

    iget-object v2, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfmd;->c:Ljava/lang/String;

    iget v2, p0, Lfkt;->f:I

    sub-int v2, p1, v2

    iput v2, v0, Lfiq;->a:I

    iput p2, v0, Lfiq;->b:I

    invoke-virtual {v0, v7}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 45
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflg;

    .line 48
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lchv;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 51
    if-eqz v1, :cond_1

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget v1, p0, Lfkt;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfkt;->f:I

    .line 60
    :cond_2
    if-nez p1, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lfkt;->g:Z

    if-nez v1, :cond_8

    .line 62
    new-instance v2, Lfji;

    invoke-direct {v2}, Lfji;-><init>()V

    .line 63
    invoke-virtual {v2}, Lfji;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v1

    check-cast v1, Lfmd;

    const-string v3, "GROUP_ADMIN"

    iput-object v3, v1, Lfmd;->d:Ljava/lang/String;

    iget-object v3, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lfmd;->c:Ljava/lang/String;

    iput p1, v1, Lfiq;->a:I

    iput p2, v1, Lfiq;->b:I

    invoke-virtual {v1, v7}, Lfiq;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 67
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflg;

    .line 69
    if-eqz v1, :cond_4

    .line 70
    invoke-interface {v1}, Lflg;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    .line 71
    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    iget v1, p0, Lfkt;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfkt;->f:I

    goto :goto_0

    .line 79
    :cond_4
    iget-object v1, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "GROUP_OWNER"

    iget-object v2, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 81
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget v1, p0, Lfkt;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfkt;->f:I

    .line 86
    :cond_5
    invoke-static {}, Lchv;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 87
    new-instance v1, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-direct {v1}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;-><init>()V

    .line 88
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->setUid(Ljava/lang/Long;)V

    .line 89
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->setAvatar(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->setNick(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->setRole(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lfkt;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserJoinTime()J

    move-result-wide v2

    .line 93
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->setJoinTime(Ljava/lang/Long;)V

    .line 94
    invoke-interface {v0}, Lflg;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    iget v1, p0, Lfkt;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfkt;->f:I

    .line 98
    :cond_7
    iput-boolean v7, p0, Lfkt;->g:Z

    .line 101
    :cond_8
    return-object v0
.end method
