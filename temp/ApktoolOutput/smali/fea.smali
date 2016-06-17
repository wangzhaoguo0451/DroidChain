.class public final Lfea;
.super Ljava/lang/Object;
.source "CommunityPostNewReplyAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private final c:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 36
    iput-object p1, p0, Lfea;->a:Landroid/app/Activity;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lfea;->c:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfea;->a:Landroid/app/Activity;

    .line 43
    iput-object p3, p0, Lfea;->c:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 44
    iput-object p2, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 45
    return-void
.end method

.method static synthetic a(Lfea;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method static synthetic b(Lfea;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfea;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lfea;)Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfea;->c:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    const v7, 0x7f0e02f4

    const v6, 0x7f0e01e3

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lfea;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfea;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0201

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lfea;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lchv;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lfea;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfea;->a:Landroid/app/Activity;

    const v2, 0x7f0e0202

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lfea;->a:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getCurUserRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lfea;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfea;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getGroup()Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e01e4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfnh;

    invoke-direct {v4}, Lfnh;-><init>()V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfni;

    invoke-direct {v6, v7, v0}, Lfni;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    goto/16 :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanAddReply()Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    new-instance v0, Lfeb;

    invoke-direct {v0, p0}, Lfeb;-><init>(Lfea;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lfea;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfea;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iget-object v2, p0, Lfea;->c:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    goto/16 :goto_0
.end method
