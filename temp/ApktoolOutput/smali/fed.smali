.class public final Lfed;
.super Ljava/lang/Object;
.source "CommunityPostNewTopicAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lfed;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lfed;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 38
    return-void
.end method

.method static synthetic a(Lfed;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lfed;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lfed;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lfed;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 42
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lfed;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->currentUserCanAddTopic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lfed;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfed;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityPostContentActivity;->a(Landroid/content/Context;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    .line 67
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lfeg;

    invoke-direct {v0, p0, v7}, Lfeg;-><init>(Lfed;B)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lfed;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfed;->a:Landroid/app/Activity;

    const v2, 0x7f0e01ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfed;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0201

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lfed;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0209

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfed;->a:Landroid/app/Activity;

    const v4, 0x7f0e0162

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfee;

    invoke-direct {v4}, Lfee;-><init>()V

    iget-object v5, p0, Lfed;->a:Landroid/app/Activity;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfef;

    invoke-direct {v6, p0}, Lfef;-><init>(Lfed;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    goto :goto_0
.end method
