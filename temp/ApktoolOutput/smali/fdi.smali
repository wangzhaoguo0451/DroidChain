.class public final Lfdi;
.super Ljava/lang/Object;
.source "CommunityJoinGroupAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfdi;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lfdi;->a:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic a(Lfdi;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfdi;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lfdi;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfdi;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    .line 40
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lfdi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfdi;->a:Landroid/app/Activity;

    const v2, 0x7f0e01ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfdi;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0201

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lfdi;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfdi;->a:Landroid/app/Activity;

    const v4, 0x7f0e0162

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfdj;

    invoke-direct {v4}, Lfdj;-><init>()V

    iget-object v5, p0, Lfdi;->a:Landroid/app/Activity;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfdk;

    invoke-direct {v6, p0}, Lfdk;-><init>(Lfdi;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lfdl;

    invoke-direct {v0, p0}, Lfdl;-><init>(Lfdi;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
