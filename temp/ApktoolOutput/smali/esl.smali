.class final Lesl;
.super Ljava/lang/Object;
.source "AccountBindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lesk;


# direct methods
.method constructor <init>(Lesk;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lesl;->a:Lesk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->setResult(I)V

    .line 235
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->finish()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Z)Z

    .line 238
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Lcoh;

    move-result-object v0

    const v1, 0x7f0c0201

    invoke-virtual {v0, v1}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 240
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesl;->a:Lesk;

    iget-object v1, v1, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesl;->a:Lesk;

    iget-object v2, v2, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lesm;

    invoke-direct {v3, p0}, Lesm;-><init>(Lesl;)V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Z)Z

    .line 254
    iget-object v0, p0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesl;->a:Lesk;

    iget-object v1, v1, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const v3, 0x7f0e0024

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcnk;

    iget-object v1, p0, Lesl;->a:Lesk;

    iget-object v1, v1, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify_tag"

    iget-object v4, p0, Lesl;->a:Lesk;

    iget-object v4, v4, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v4, v4, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v5

    iget-object v5, v5, Letz;->a:Lcmm;

    invoke-direct/range {v0 .. v5}, Lcnk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
