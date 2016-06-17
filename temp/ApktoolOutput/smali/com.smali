.class public final Lcom;
.super Landroid/os/Handler;
.source "AccountEditText.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/account/widget/AccountEditText;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/widget/AccountEditText;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-static {v1}, Lcom/wandoujia/account/widget/AccountEditText;->a(Lcom/wandoujia/account/widget/AccountEditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 61
    iget-object v0, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setSelection(I)V

    .line 62
    iget-object v0, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    iget-object v1, p0, Lcom;->a:Lcom/wandoujia/account/widget/AccountEditText;

    invoke-static {v1}, Lcom/wandoujia/account/widget/AccountEditText;->a(Lcom/wandoujia/account/widget/AccountEditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
