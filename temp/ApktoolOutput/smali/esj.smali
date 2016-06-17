.class public final Lesj;
.super Ljava/lang/Object;
.source "AccountBindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00d4

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->c(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    :cond_0
    :goto_0
    new-instance v0, Lcmt;

    iget-object v1, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->d(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->e(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v4}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind_tag"

    iget-object v6, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v6, v6, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v7

    iget-object v7, v7, Letz;->a:Lcmm;

    invoke-direct/range {v0 .. v7}, Lcmt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 205
    :cond_1
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesj;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->c(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
