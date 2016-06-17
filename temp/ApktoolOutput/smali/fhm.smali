.class public final Lfhm;
.super Ljava/lang/Object;
.source "CommunityPostReplyFragment.java"

# interfaces
.implements Lflm;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lfhm;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "ugc"

    const-string v1, "post result failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfhm;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lfhm;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 44
    :cond_0
    return-void
.end method
