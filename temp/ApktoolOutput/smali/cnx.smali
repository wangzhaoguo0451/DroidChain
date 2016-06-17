.class public final Lcnx;
.super Landroid/os/CountDownTimer;
.source "AccountDialogUtils.java"


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/widget/Button;

.field private synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLandroid/widget/Button;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-boolean p1, p0, Lcnx;->a:Z

    iput-object p2, p0, Lcnx;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcnx;->c:Landroid/content/Context;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .prologue
    .line 173
    iget-boolean v0, p0, Lcnx;->a:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcnx;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcnx;->c:Landroid/content/Context;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verify_emial_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcnx;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcnx;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcnx;->c:Landroid/content/Context;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verify_captcha_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 162
    iget-boolean v0, p0, Lcnx;->a:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcnx;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcnx;->c:Landroid/content/Context;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verify_email_again:I

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcnx;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcnx;->c:Landroid/content/Context;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verify_captcha_again:I

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
