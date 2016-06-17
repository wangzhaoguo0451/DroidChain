.class public final Levx;
.super Ljava/lang/Object;
.source "SendCommentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Levx;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Levx;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    const v1, 0x7f0e0203

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit16 v3, v3, -0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Levx;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->f(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Levx;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->f(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Levx;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->f(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    return-void
.end method
