.class final Lfgi;
.super Lfbz;
.source "CommunityTopicFeedCardModel.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lfbz;-><init>()V

    .line 40
    iput-object p1, p0, Lfgi;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 41
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v1, Lfdy;

    iget-object v0, p0, Lfgi;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lfdy;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    return-object v1
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lfgi;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
