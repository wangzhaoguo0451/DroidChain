.class public Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;
.super Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;
.source "CommunityPostReplyFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

.field private b:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

.field private final c:Lflm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;-><init>()V

    .line 32
    new-instance v0, Lfhm;

    invoke-direct {v0, p0}, Lfhm;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->c:Lflm;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lflm;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->c:Lflm;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->b:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->b:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->b:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e021c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e02f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lfhl;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lfhn;

    invoke-direct {v0, p0}, Lfhn;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;)V

    return-object v0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 106
    const-string v0, "topic_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 108
    const-string v0, "reply_model"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostReplyFragment;->b:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    goto :goto_0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x3e8

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
