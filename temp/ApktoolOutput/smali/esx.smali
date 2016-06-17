.class public final Lesx;
.super Ljava/lang/Object;
.source "AccountChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v4, 0x7f0e002b

    .line 115
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->e(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->f(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_1
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v1, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    const v2, 0x7f0e04ca

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-virtual {v2, v4}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lesy;

    invoke-direct {v3}, Lesy;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 172
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_4

    invoke-static {v2}, Ld;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    :cond_4
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v1, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    const v2, 0x7f0e04cc

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-virtual {v2, v4}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lesz;

    invoke-direct {v3}, Lesz;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 147
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x32

    if-le v0, v3, :cond_6

    .line 148
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v1, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    const v2, 0x7f0e04cd

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-virtual {v2, v4}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leta;

    invoke-direct {v3}, Leta;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 161
    :cond_6
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v3, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    const v4, 0x7f0e002c

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Ljava/lang/String;)V

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    new-instance v0, Lcmu;

    const-string v3, "change_password_tag"

    iget-object v4, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v4, v4, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v5

    iget-object v5, v5, Letz;->a:Lcmm;

    invoke-direct/range {v0 .. v5}, Lcmu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 166
    :cond_7
    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->f(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    new-instance v3, Lcni;

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->f(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "change_password_tag"

    iget-object v0, p0, Lesx;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    iget-object v8, v0, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v9, v0, Letz;->a:Lcmm;

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcni;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v3}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
