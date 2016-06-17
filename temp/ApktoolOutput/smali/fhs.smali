.class public final Lfhs;
.super Ljava/lang/Object;
.source "CommunityTopicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lfhs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lfhs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lfhs;->a:Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityTopicDetailFragment;)V

    .line 157
    :cond_0
    return-void
.end method
