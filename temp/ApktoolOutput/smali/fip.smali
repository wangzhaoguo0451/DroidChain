.class public final Lfip;
.super Leuf;
.source "CommunityUserTopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lfgh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lfip;->b:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lfip;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lffq;

    iget-object v1, p0, Lfip;->b:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    move-result-object v1

    invoke-direct {v0, v1}, Lffq;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;)V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 182
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityTopicFeedCardView;

    move-result-object v0

    return-object v0
.end method
