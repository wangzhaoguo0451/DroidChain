.class public Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;
.super Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;
.source "CommunityPostTopicFragment.java"


# instance fields
.field private a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private final b:Lflm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;-><init>()V

    .line 30
    new-instance v0, Lfho;

    invoke-direct {v0, p0}, Lfho;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->b:Lflm;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)Lflm;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->b:Lflm;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    if-eqz v0, :cond_0

    const-string v0, "anime"

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSubjectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0206

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lfhl;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lfhp;

    invoke-direct {v0, p0}, Lfhp;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;)V

    return-object v0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 108
    const-string v1, "group_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    goto :goto_0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x1388

    return v0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g()V

    .line 61
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const v0, 0x7f0e0208

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->f()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/wandoujia/p4/community/fragmant/CommunityPostTopicFragment;->a(II)V

    .line 54
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
