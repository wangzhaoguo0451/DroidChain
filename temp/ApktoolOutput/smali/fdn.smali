.class public final Lfdn;
.super Ljava/lang/Object;
.source "CommunityLikeTopicAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfdn;->a:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 33
    return-void
.end method

.method static synthetic a(Lfdn;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method static synthetic a(Lfdn;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lfdn;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 95
    new-instance v0, Lflq;

    iget-object v1, p0, Lfdn;->a:Landroid/app/Activity;

    iget-object v2, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lflq;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflq;->a(Lflm;)V

    .line 99
    return-void
.end method

.method static synthetic b(Lfdn;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 7

    .prologue
    const v6, 0x7f0e01ea

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->isCurUserLiked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 42
    :goto_1
    invoke-static {}, Lchv;->z()Z

    move-result v3

    if-nez v3, :cond_3

    .line 43
    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfdn;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0201

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lfdn;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 41
    goto :goto_1

    .line 47
    :cond_3
    invoke-static {}, Lchv;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    iget-object v3, p0, Lfdn;->a:Landroid/app/Activity;

    const v4, 0x7f0e0202

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lfdn;->a:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    .line 55
    :cond_4
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    iget-object v0, p0, Lfdn;->a:Landroid/app/Activity;

    const v1, 0x7f0e01c6

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    .line 63
    :cond_5
    iget-object v1, p0, Lfdn;->b:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanVote()Z

    move-result v1

    if-nez v1, :cond_6

    .line 64
    new-instance v1, Lfdo;

    invoke-direct {v1, p0, v0}, Lfdo;-><init>(Lfdn;Z)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 91
    :cond_6
    invoke-direct {p0, v0}, Lfdn;->a(Z)V

    goto/16 :goto_0
.end method
