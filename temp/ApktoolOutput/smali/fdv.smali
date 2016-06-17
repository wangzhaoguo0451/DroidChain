.class public final Lfdv;
.super Ljava/lang/Object;
.source "CommunityOpenNominateAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lfdv;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic a(Lfdv;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lfdv;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    .line 26
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lfdv;->a:Landroid/content/Context;

    iget-object v1, p0, Lfdv;->a:Landroid/content/Context;

    const v2, 0x7f0e01ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfdv;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0201

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lfdv;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfdv;->a:Landroid/content/Context;

    const v4, 0x7f0e0162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfdw;

    invoke-direct {v4}, Lfdw;-><init>()V

    iget-object v5, p0, Lfdv;->a:Landroid/content/Context;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfdx;

    invoke-direct {v6, p0}, Lfdx;-><init>(Lfdv;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lfdv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/p4/community/activity/CommunityNewNominateActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
