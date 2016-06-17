.class final Lfgg;
.super Lfbz;
.source "CommunityTopicCardModel.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lfbz;-><init>()V

    .line 43
    iput-object p1, p0, Lfgg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lfgg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 3
    .parameter

    .prologue
    .line 68
    new-instance v1, Lfdy;

    iget-object v0, p0, Lfgg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lfdy;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lfgg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfgg;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
