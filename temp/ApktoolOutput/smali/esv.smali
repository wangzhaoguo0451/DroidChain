.class public final Lesv;
.super Ljava/lang/Object;
.source "AccountChangePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 67
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 69
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 73
    :cond_0
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 75
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 78
    :cond_1
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    new-instance v1, Lesw;

    invoke-direct {v1, p0}, Lesw;-><init>(Lesv;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 86
    :try_start_0
    iget-object v0, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->c(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lesv;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->d(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    return-void
.end method
