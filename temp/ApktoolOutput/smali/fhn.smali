.class public final Lfhn;
.super Ljava/lang/Object;
.source "CommunityPostReplyFragment.java"

# interfaces
.implements Lfhl;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 78
    :cond_0
    new-instance v0, Lflo;

    iget-object v1, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lflo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfhn;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lflm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflo;->a(Lflm;)V

    .line 82
    return-void

    .line 78
    :cond_1
    const-string v5, ""

    goto :goto_0
.end method
