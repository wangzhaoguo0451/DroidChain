.class public final Lfin;
.super Ljava/lang/Object;
.source "CommunityUserTopicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lfin;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lfin;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->SELECT_TAB:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v3, 0x1

    const-string v4, "group_explore"

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method
