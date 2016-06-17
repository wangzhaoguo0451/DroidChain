.class public final Letb;
.super Landroid/os/Handler;
.source "AccountChangePasswordActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v0, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 185
    iget-object v0, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 186
    iget-object v0, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Letb;->a:Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;->b(Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
