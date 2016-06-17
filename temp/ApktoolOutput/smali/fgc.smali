.class final Lfgc;
.super Lfbz;
.source "CommunityRankingCardModel.java"


# instance fields
.field private synthetic a:Lfgb;


# direct methods
.method constructor <init>(Lfgb;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lfgc;->a:Lfgb;

    invoke-direct {p0}, Lfbz;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lfgc;->a:Lfgb;

    iget-object v0, v0, Lfgb;->a:Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->getUser()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lfgc;->a:Lfgb;

    iget-object v0, v0, Lfgb;->a:Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->getLikesCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfgc;->a:Lfgb;

    iget-object v0, v0, Lfgb;->a:Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityRankingModel;->getUser()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
