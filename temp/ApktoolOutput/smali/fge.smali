.class final Lfge;
.super Lfbz;
.source "CommunityReplyCardModel.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lfbz;-><init>()V

    .line 36
    iput-object p1, p0, Lfge;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfge;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lfge;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lfge;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfge;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
