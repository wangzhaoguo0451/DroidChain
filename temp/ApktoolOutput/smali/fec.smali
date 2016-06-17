.class final Lfec;
.super Ljava/lang/Object;
.source "CommunityPostNewReplyAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfeb;


# direct methods
.method constructor <init>(Lfeb;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lfec;->a:Lfeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lfec;->a:Lfeb;

    iget-object v0, v0, Lfeb;->a:Lfea;

    invoke-static {v0}, Lfea;->a(Lfea;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanAddReply()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lfec;->a:Lfeb;

    iget-object v0, v0, Lfeb;->a:Lfea;

    invoke-static {v0}, Lfea;->b(Lfea;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01fc

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lfec;->a:Lfeb;

    iget-object v0, v0, Lfeb;->a:Lfea;

    invoke-static {v0}, Lfea;->b(Lfea;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfec;->a:Lfeb;

    iget-object v1, v1, Lfeb;->a:Lfea;

    invoke-static {v1}, Lfea;->a(Lfea;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v1

    iget-object v2, p0, Lfec;->a:Lfeb;

    iget-object v2, v2, Lfeb;->a:Lfea;

    invoke-static {v2}, Lfea;->c(Lfea;)Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    goto :goto_0
.end method
