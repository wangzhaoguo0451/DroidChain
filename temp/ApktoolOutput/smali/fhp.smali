.class public final Lfhp;
.super Ljava/lang/Object;
.source "CommunityPostTopicFragment.java"

# interfaces
.implements Lfhl;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lfhp;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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
    .line 92
    new-instance v0, Lflp;

    iget-object v1, p0, Lfhp;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lfhp;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lflp;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lfhp;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)Lflm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflp;->a(Lflm;)V

    .line 95
    return-void
.end method
