.class public final Lfcy;
.super Ljava/lang/Object;
.source "CommunityForbidUserAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfcy;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lfcy;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method static synthetic a(Lfcy;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    new-instance v0, Lfdb;

    invoke-direct {v0, p0}, Lfdb;-><init>(Lfcy;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lfcy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lfcy;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfcy;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lfcy;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 7

    .prologue
    .line 34
    iget-object v0, p0, Lfcy;->b:Landroid/app/Activity;

    iget-object v1, p0, Lfcy;->b:Landroid/app/Activity;

    const v2, 0x7f0e01d9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfcy;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfcy;->b:Landroid/app/Activity;

    const v4, 0x7f0e01d6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfcz;

    invoke-direct {v4}, Lfcz;-><init>()V

    iget-object v5, p0, Lfcy;->b:Landroid/app/Activity;

    const v6, 0x7f0e01d8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfda;

    invoke-direct {v6, p0}, Lfda;-><init>(Lfcy;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    .line 51
    return-void
.end method
