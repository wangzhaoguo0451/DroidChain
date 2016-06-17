.class public final Lfho;
.super Ljava/lang/Object;
.source "CommunityPostTopicFragment.java"

# interfaces
.implements Lflm;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lfho;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfho;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lfho;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 38
    :cond_0
    return-void
.end method
