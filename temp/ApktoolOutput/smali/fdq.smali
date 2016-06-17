.class public final Lfdq;
.super Ljava/lang/Object;
.source "CommunityNominateGroupAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lfdq;->c:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lfdq;->a:Landroid/app/Activity;

    .line 53
    iput-object p5, p0, Lfdq;->d:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lfdq;->e:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lfdq;->f:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic a(Lfdq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lfdq;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ugc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nominate Group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    const-class v2, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v0, p0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    const-string v2, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nominate Group result model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lfdq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lfdq;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfdq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lfdq;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lfdq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lfdq;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lfdq;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lfdq;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lfdq;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lfdq;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lfdq;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfdq;->a:Landroid/app/Activity;

    const v2, 0x7f0e0598

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfdq;->a:Landroid/app/Activity;

    const v3, 0x7f0e0226

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lfdq;->b:Landroid/app/ProgressDialog;

    .line 62
    new-instance v0, Lfdr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfdr;-><init>(Lfdq;B)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
