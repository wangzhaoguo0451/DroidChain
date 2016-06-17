.class public final Letl;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e05b5

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 123
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object v1, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 128
    :sswitch_1
    invoke-static {}, Lchv;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const-string v1, "tel"

    iget-object v2, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-static {}, Lchv;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const-string v1, "email"

    iget-object v2, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lchv;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const-string v1, "tel"

    iget-object v2, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto :goto_0

    .line 154
    :sswitch_4
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lchv;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const-string v1, "email"

    iget-object v2, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 165
    :sswitch_5
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-static {}, Lchv;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 172
    :cond_4
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 178
    :sswitch_6
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    invoke-static {}, Lchv;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 183
    :cond_5
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 185
    :cond_6
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 191
    :sswitch_7
    invoke-static {}, Ld;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lchv;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :cond_7
    iget-object v0, p0, Letl;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->f(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    goto/16 :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00d0 -> :sswitch_0
        0x7f0c00dc -> :sswitch_0
        0x7f0c00de -> :sswitch_0
        0x7f0c00df -> :sswitch_0
        0x7f0c00e5 -> :sswitch_4
        0x7f0c00e7 -> :sswitch_6
        0x7f0c00e9 -> :sswitch_2
        0x7f0c00eb -> :sswitch_3
        0x7f0c00ed -> :sswitch_5
        0x7f0c00ef -> :sswitch_1
        0x7f0c00f1 -> :sswitch_7
    .end sparse-switch
.end method
