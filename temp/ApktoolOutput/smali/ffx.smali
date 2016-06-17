.class public final Lffx;
.super Lfbz;
.source "CommunityGroupGridCardModel.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lfbz;-><init>()V

    .line 42
    iput-object p1, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->currentGroupBalloting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01ca

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getBallotCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTotalTopicCount()I

    move-result v0

    .line 58
    iget-object v1, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getMembersCount()I

    move-result v1

    .line 59
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e01c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->currentGroupBalloting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lfdt;

    iget-object v1, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdt;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lfdz;

    iget-object v1, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfdz;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSlogan()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lffx;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
