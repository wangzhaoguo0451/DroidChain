.class public final Lfhx;
.super Leuf;
.source "CommunityTopicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lfgd;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lfhx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lfhx;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lfhx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    new-instance v1, Lffl;

    iget-object v2, p0, Lfhx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v2

    iget-object v3, p0, Lfhx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lffl;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;Lffl;)Lffl;

    iget-object v0, p0, Lfhx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->e(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Lffl;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 387
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;

    move-result-object v0

    return-object v0
.end method
